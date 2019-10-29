class OrdersController < ApplicationController
  def new 
    @order = Order.new
  end

  def create
  end

  def edit 
  end

  def destroy
  end

  def your_orders
    @orders = Order.all 
  end

  private 
  def order_params
  end
end
