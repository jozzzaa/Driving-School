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
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
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
