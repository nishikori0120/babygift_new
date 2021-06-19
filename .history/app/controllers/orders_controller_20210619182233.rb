class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def new
    if user_signed_in?
      @order = Order.new
    else
      redirect_to new_user_registration_path
    end
  end

  def create
    @order = Order.new(order_params)
    unless @order.valid?
      render :new and return
    end
    session["order_data"] = {order: @order.attributes}
    session["user_data"] = {user: current_user.attributes}
    redirect_to orders_select_address_path

    # NeworderMailer.send_mail.deliver_now
  end

  def select_address
    @user = User.find(current_user.id)
    @address = @user.address
  end

  def add_address
    @address = Address.new(address_params)
    unless @address.valid?
      render :select_address and return
    end
    session["address_data"] = {new_address: @address.attributes}
    redirect_to orders_comfimation_path
  end

  def comfimation
    @address = current_user.address
    if session["address_data"].present?
      @new_address = Address.new(session["address_data"]["new_address"])
    end
    @order = Order.new(session["order_data"]["order"])

    NeworderMailer.send_mail.deliver_now
  end

  private

  def order_params
    params.require(:order).permit(:k_name,:r_name,:birthday,:height).merge(user_id: current_user.id)
  end

  def address_params
    params.require(:address).permit(:postcode,:prefecture,:city,:street,:building,:first_name, :first_name_kana, :last_name, :last_name_kana, :tel).merge(user_id: current_user.id)
  end

end
