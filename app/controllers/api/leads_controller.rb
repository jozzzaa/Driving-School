module Api

  class LeadsController < ApplicationController

    def new
    end

    def create
      @lead = Lead.new
      @lead.name = params[:name].to_str
      @lead.email = params[:email].to_str
      @lead.phone_number = params[:phone].to_str
      @lead.save

      current_id = @lead.id
      current_name = @lead.name

      render json: { current_id: current_id, current_name: current_name }

    end

    def edit_stage2
      @lead_current = Lead.find(params[:current_lead])
      @lead_current.gender_pref = params[:instructor_pref]
      @lead_current.transmission_pref = params[:transmission_pref]
      @lead_current.location = params[:location]
      @lead_current.save
    end

    def edit_stage3
      @lead_current = Lead.find(params[:current_lead])
      @lead_current.hours_completed = params['hours_completed']
      @lead_current.license_by = params['license_by']
      @lead_current.save

      render json: { current_data: @lead_current }
    end


  end

end
