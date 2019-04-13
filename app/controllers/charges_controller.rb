class ChargesController < ApplicationController
    
    def new
    end

def create
  # Amount in cents
  @amount = current_order.subtotal

  customer = Stripe::Customer.create({
    email: params['pk_test_ckKO5YW4t5HNlJT5vOF6Ju8900XaANUGFO'],
    source: params['sk_test_C4q4W75tRiZfnRqVDc2j2c2H00LbQH42KL'],
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'usd',
  })

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
