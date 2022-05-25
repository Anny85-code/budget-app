class EntitiesController < ApplicationController
  load_and_authorize_resource
  # before_action :set_entity, only: %i[show edit destroy]
  before_action :authenticate_user!
  def index
    # @groups = Group.all
    @entities = Entity.all
    # @total_amount = 0
    # @entities.each do |entity|
    #   @total_amount += entity.amount
  end

  def show
    @entity = Entity.find(params[:id])
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entity.new(entity_params)

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
    private

    # def set_entity
    #   @entity = Entity.find(params[:id])
    # end

  # def entity_params
  #   params.require(:entity).permit(:name, :amount)
  # end
end
end

