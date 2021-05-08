class GroupsController < ApplicationController
  def index
    @group = Groups.all
  end
  
  def new
    @group = Group.new
  end
  
  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: "Group created successfully"
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
    @article = Article.find(params[:id])
    @article.destroy
  end

  private
  
  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
