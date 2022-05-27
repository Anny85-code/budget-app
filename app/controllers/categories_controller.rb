class CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  def index
    @categories = Category.all
  end

  def show
    @category = Category.includes(:transactions).find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save

        format.html { redirect_to category_url(@category) }

        flash[:notice] = 'You have successfully created a category.'
      else
        format.html { render :new, alert: 'An error has occurred while creating category' }
      end
    end
  end

  def category_params
    params.require(:category).permit(:name, :icon, :author_id)
  end
end
