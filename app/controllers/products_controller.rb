class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.all.find(params[:id])
  end
  
  def cart  
    @shopping_cart = []
    @product = Product.all.find(params[:id])
  end

  def edit
  end

  def create
    @product = current_user.products.create(product_params)
    @product.product_image.attach(product_params[:product_image])
    @product.categories << Category.find(params[:category])
    if @product.save 
      redirect_to root_path
    else 
      flash[:alert] = product.errors.full_messages.join('<br>')
    end 
  end

  def destroy
    Product.all.find(params[:id]).destroy
    redirect_to root_path 
    flash[:alert] = "You have successfully purchased your item"
  end

  private 
  def product_params 
    params.permit(:name, :price, :description, :product_image)
  end
end
