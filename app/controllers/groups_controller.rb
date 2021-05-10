class GroupsController < ApplicationController
  # before_action :logged_in?
  def index
    @groups = Group.all
  end
  
  def new
    @group = current_user.groups.build
  end
  
  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = current_user.groups.build(group_params)
    if @group.save
      redirect_to @group, notice: "Group created successfully"
    else
      render :new
    end
  end
  
  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to @group
    else
      render :edit
    end
  end
  
  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path
  end

  private
  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
