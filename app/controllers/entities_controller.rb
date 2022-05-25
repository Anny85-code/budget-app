class EntitiesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @group = Group.all
    @entities = Entity.all
    # @total_amount = 0
    # @entities.each do |entity|
    #   @total_amount += entity.amount
  end

  def show
    @entity = Entity.find(params[:id])
  end

  def new
    @Entity = Entity.new
  end

  def create
    @Entity = Entity.new(entity_params)
    # @group.author_id = current_user.id

    respond_to do |format|
      if @entity.save
        # format.html { redirect_to groups_path(id: @group.author_id) }
        format.html { redirect_to entity_url(@entity) }
        # format.html { redirect_to groups_path(@group) }
        flash[:notice] = 'You have successfully created a transaction.'
      else
        format.html { render :new, alert: 'An error has occurred while creating a transaction' }
      end
    end

  def entity_params
    params.require(:entity).permit(:name, :amount, :author_id)
  end
end
end
# end
