Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_TEST_PUBKEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]