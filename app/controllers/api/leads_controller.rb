require 'mail'

module Api

  class LeadsController < ApplicationController

    def new
    end

    def create
      @lead = Lead.new
      @lead.name = params[:name].to_str
      @lead.email = params[:email].to_str
      @lead.phone_number = params[:phone].to_str
      @lead.created_at = (Time.zone = "EST")
      @lead.save

      current_id = @lead.id
      current_name = @lead.name

      name = params[:name].to_str
      email = params[:email].to_str
      phone_number = params[:phone].to_str

      # Email Lead
      mail = Mail.new do
        from    'lessons@exceldrive.com'
        to      'jozza24@gmail.com'
        subject 'Excel Drive Landing Page has a new Lead'

        html_part do
          content_type 'text/html; charset=UTF-8'
          body "<h1>Excel Drive has a New Lead</h1><br>
                  <p><b>Name : </b>#{name}</p><br>
                  <p><b>Email : </b>#{email}</p><br>
                  <p><b>Phone Number : </b>#{phone_number}</p><br>"
        end

      end

      mail.delivery_method :sendmail
      mail.deliver!

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
