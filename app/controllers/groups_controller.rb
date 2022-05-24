class GroupsController < ApplicationController
  def index
    @groups = Group.where(user: current_user)
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id

    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_index_path(id: @group.user_id) }
        flash[:notice] = 'You have successfully created a category.'
      else
        format.html { render :new, alert: 'An error has occurred while creating category' }
      end
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
