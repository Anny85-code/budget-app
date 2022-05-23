class EntitiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource
  def index
  end

  def show
  end
end
