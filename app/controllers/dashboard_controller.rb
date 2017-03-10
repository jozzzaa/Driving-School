class DashboardController < ApplicationController

  def index
    @leads = Lead.all
    
    render :index
  end

end
