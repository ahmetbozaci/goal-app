class ApplicationController < ActionController::Base
  before_action :current_user
  def current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
  # def logged_in?
  #   current_user != nil
  # end
end
