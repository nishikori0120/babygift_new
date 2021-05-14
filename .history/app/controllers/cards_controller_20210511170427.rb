class CardsController < ApplicationController
  def new
  end

  def create
# Set your secret key. Remember to switch to your live secret key in production.
# See your keys here: https://dashboard.stripe.com/apikeys
Stripe.api_key = ENV['STRIPE_TEST_PUBLIC_KEY']
# This example sets up an endpoint using the Sinatra framework.
# Watch this video to get started: https://youtu.be/8aA9Enb8NVc.

require 'json'
require 'sinatra'

post '/create-checkout-session' do
  session = Stripe::Checkout::Session.create({
    payment_method_types: ['card'],
    line_items: [{
      price_data: {
        currency: 'jpy',
        product_data: {
          name: 'T-shirt',
        },
        unit_amount: 3000,
      },
      quantity: 1,
    }],
    mode: 'payment',
    # These placeholder URLs will be replaced in a following step.
    success_url: 'https://babygiftnew-01.herokuapp.com/' ,
    cancel_url: 'https://babygiftnew-01.herokuapp.com/' ,
  })

  { id: session.id }.to_json
end
end

end