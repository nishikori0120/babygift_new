class CardsController < ApplicationController
  def new
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price: 'price_1Iqw7FL3ZeL8PtetXp8jRh3T',
        quantity: 1,
      }],
      mode: 'payment',
      success_url: request.base_url + '/cards/create?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: request.base_url + '/payments/subscription1',
    })
  end

  def create
  end

end
