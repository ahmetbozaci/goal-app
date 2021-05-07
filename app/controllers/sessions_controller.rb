class SessionsController < ApplicationController
  def new; end
  
  def create
    user = User.find_by(name: params[:name])
    if user.present?
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      flash[:alert] = "Username is not correct"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logged out'
    redirect_to root_path
  end
end
