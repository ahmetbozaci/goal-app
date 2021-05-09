class ApplicationController < ActionController::Base
  before_action :current_user
  def current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end
  def logged_in?
    current_user != nil
  end
end
