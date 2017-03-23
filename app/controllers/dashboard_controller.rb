require 'pry'

class DashboardController < ApplicationController

  def index
    @leads = Lead.all
    @campaigns = Campaign.all

    render :index
  end

  def lead
    @current_lead = Lead.find_by id: params[:id]
  end

  def remove
    lead = Lead.find_by id: params[:id]
    lead.destroy
    redirect_to '/j42jvn590H23nfnuRVJNW'
  end

end
