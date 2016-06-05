if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_a39goEZHpWYLe7pwOzmVltnQ',
    :secret_key => 'sk_test_1bDXOxaCWRm6m7tbU2oFxYBl'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]