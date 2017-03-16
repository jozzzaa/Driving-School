class StudentsController < ApplicationController

  def start

    render :start
  end

  def lead

    render :lead
  end

  def lead_two

    render :lead_two
  end

  def lead_three

    render :lead_three
  end

  def stage_one
    lead = Lead.new
    lead.name = params[:name]
    lead.email = params[:email]
    lead.phone_number = params[:phone]

    if lead.save
      redirect_to action: 'lead_two', id: lead.id
    else
      # render :lead
    end

  end

  def stage_two
    lead = Lead.find_by id: params[:id]
    lead.gender_pref = params[:gender]
    lead.transmission_pref = params[:transmission]
    lead.location = params[:location]

    if lead.save
      redirect_to action: 'lead_three', id: lead.id
    else
      render :lead_two
    end

  end

  def stage_three
    lead = Lead.find_by id: params[:id]
    lead.hours_completed = params[:hours_completed]
    lead.license_by = params[:license_by]

    if lead.save
      redirect_to '/thank-you'
    else
      render :lead_three
    end

  end

  def new

    render :booking
  end

  def thanks
    render :thanks
  end

end
