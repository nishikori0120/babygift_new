class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @order = Order.new
  end

  def create
    @user = User.find(current_user.id)
    @address = @user.address
    @order = Order.new(order_params)
    unless @order.valid?
      render :new and return
    end
    session["order_data"] = {order: @order.attributes}
    session["user_data"] = {user: current_user.attributes}
  end

  def add_address
    @new_address = Address.new(address_params)
    unless @new_address.valid?
      render :select_address and return
    end
    session["address_data"] = {new_address: @new_address.attributes}
    redirect_to order_comfimation_path
  end

  private

  def order_params
    params.require(:order).permit(:k_name,:r_name,:birthday,:height).merge(user_id: current_user.id)
  end

end
