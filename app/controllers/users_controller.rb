class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "#{@user.name} is created successfully"
      redirect_to root_path
    else
      render :new
  end

  def show
    @user = User.find_by(:id session[:user_id] if session[:user_id])
  end

  private

  def user_params
    param.require(:user).permit(:name)
  end
end
