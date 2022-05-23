class EntitiesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  load_and_authorize_resource
  def index; end

  def show; end
end
