class CardsController < ApplicationController
  def new
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price: 'price_XXXX',
        quantity: 1,
      }],
      mode: 'subscription',
      success_url: request.base_url + '/payments/create_subscription?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: request.base_url + '/payments/subscription1',
    })
  end

  def create

  end
end
