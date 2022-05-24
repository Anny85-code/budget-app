class EntitiesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  load_and_authorize_resource
  def index
    @entities = Entity.where(user: current_user)
  end

  def show; end
end
