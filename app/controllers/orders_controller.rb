class OrdersController < ApplicationController
  def index
    @orders = Order.all 
  end

  def new 
    @order = Order.new
  end

  def show 
  end

  def create
    @order = Order.create(order_params)
  end

  def edit 
  end

  private 
  def order_params
    params.require(:order).permit(:number, :ordered)
  end
end

