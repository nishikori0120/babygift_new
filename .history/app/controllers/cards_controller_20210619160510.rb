class CardsController < ApplicationController
  def new
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price: 'price_1IqxNoL3ZeL8PtetX6lPFWXb',
        quantity: 1,
      }],
      mode: 'payment',
      success_url: request.base_url + '/cards/create?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: request.base_url ,
    })
  end

  def create
    @order = Order.new(session["order_data"]["order"])
    if session["address_data"].present?
      @address = Address.new(session["address_data"]["new_address"])
      @address.save
      @order[:address_id] = Address.last.id
      @order.save
      session["address_data"]["new_address"].clear
    else
      @order[:address_id] = current_user.address.id
      @order.save
    end

    session["order_data"]["order"].clear
    session["user_data"]["user"].clear
    redirect_to root_path
  end

end
