class CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  def index
    # @categories = Category.where(author: current_user)
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    # @category.author_id = current_user.id

    respond_to do |format|
      if @category.save
        # format.html { redirect_to categories_path(id: @category.author_id) }
        format.html { redirect_to category_url(@category) }
        # format.html { redirect_to categories_path(@category) }
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
