class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    if User.find_by(id: session[:user_id])
      return true
    else
      return false
    end
  end

  def index
    render :index
  end

  def lead
    render :lead
  end

  def login

  end

end
