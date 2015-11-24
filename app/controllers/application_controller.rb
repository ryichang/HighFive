class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
  	@complimentupdate = Compliment.where(created_at: (Time.now - 2.hour)..Time.now).count.to_i
  end

  def current_user
  	@current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
  end

  include SessionsHelper

end
