class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = category.create(category_params)
    if @category.save 
      redirect_to categories_path
    # else
    end
  end

  def update
  end

  def destroy

  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
