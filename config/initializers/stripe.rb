Rails.configuration.stripe = {
  :publishable_key => ['pk_test_ckKO5YW4t5HNlJT5vOF6Ju8900XaANUGFO'],
  :secret_key      => ['sk_test_C4q4W75tRiZfnRqVDc2j2c2H00LbQH42KL']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]