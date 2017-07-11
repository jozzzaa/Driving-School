class BookingController < ApplicationController

  def address

    render :address
  end

  def time
    $location = params[:location]
    $postcode = params[:postcode]

    render :time
  end

  def thanks

    render :thanks
  end

end
