class ChargesController < ApplicationController

  def new
    $location = params[:location]
    $postcode = params[:postcode]
    $date = params[:date]
    $time = params[:time]

    price_location = $postcode.split('').first

    if price_location == '5'
      # Adelaide
      $price = 7000
      $price_formated = 70
    elsif price_location == '3'
      # Melbourne
      $price = 5600
      $price_formated = 56
    elsif price_location == '2'
      # Sydney
      $price = 7000
      $price_formated = 70
    end

  end

  def create

    customer_name = params[:name]
    customer_email = params[:email]
    customer_phone = params[:phone]
    customer_address = params[:address]
    customer_postcode = params[:postcode]
    customer_price = params[:price]

    customer_metadata = {
      'name' => customer_name,
      'email' => customer_email,
      'phone' => customer_phone,
      'address' => customer_address,
      'postcode' => customer_postcode,
    }

    # Amount in cents
    @amount = customer_price.to_i

    customer = Stripe::Customer.create(
      :email => customer_email,
      :source  => params[:stripeToken],
      :metadata => customer_metadata,
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
