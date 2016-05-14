if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_f6U5AQVXVFXwIlzO51ASa8HK',
    :secret_key => 'sk_test_4OrpRfPKFDfVcrDysqYIeHZz'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]