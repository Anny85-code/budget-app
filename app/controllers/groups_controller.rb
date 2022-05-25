class GroupsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    # @groups = Group.where(author: current_user)
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    # @group.author_id = current_user.id

    respond_to do |format|
      if @group.save
        # format.html { redirect_to groups_path(id: @group.author_id) }
        format.html { redirect_to group_url(@group) }
        # format.html { redirect_to groups_path(@group) }
        flash[:notice] = 'You have successfully created a category.'
      else
        format.html { render :new, alert: 'An error has occurred while creating category' }
      end
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon, :author_id)
  end
end
