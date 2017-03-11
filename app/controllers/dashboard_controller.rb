require 'pry'

class DashboardController < ApplicationController

  def index
    @leads = Lead.all

    render :index
  end

  def lead
    @current_lead = Lead.find_by id: params[:id]
  end

end
