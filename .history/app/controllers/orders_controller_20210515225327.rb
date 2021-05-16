class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    unless @order.valid?
      render :new and return
    end
    session["order_data"] = {order: @order.attributes}
    session["user_data"] = {user: current_user.attributes}
    redirect_to order_select_address_path
  end


end
