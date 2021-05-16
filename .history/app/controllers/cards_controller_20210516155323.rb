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
  end

end
