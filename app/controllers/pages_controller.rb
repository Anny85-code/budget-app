class PagesController < ApplicationController
  def index
    @groups = Group.order(id: 'DESC')
  end
end


# @user = User.includes(:posts, :comments, :likes).find(params[:author_id])
#     @posts = Post.all

#      @foods = Recipe.includes(:recipe_foods).where(public: true).order(id: 'DESC')