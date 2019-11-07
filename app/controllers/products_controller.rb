class ProductsController < ApplicationController
  def setup 
   
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = product.create(product_params)
    @product.product_image.attach(product_params([:product][:product_image])
    if @product.save 
      redirect_to root_path
    else 
      flash[:alert] = product.errors.full_messages.join('<br>')
      # redirect_to 
    end 
  end

  def destroy
  end

  private 
  def product_params 
    params.require(:product).permit(:name, :price, :rating, :description)
  end
end
