class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def category_helper(product)
    Category.find_by(id: product.category_ids).name
  end
  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = product.create(product_params)
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
