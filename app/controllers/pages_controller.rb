class PagesController < ApplicationController
  def home
    @entities = Group.includes(:entity).order(id: 'DESC')
  end
end


# @user = User.includes(:posts, :comments, :likes).find(params[:user_id])
#     @posts = Post.all

#      @foods = Recipe.includes(:recipe_foods).where(public: true).order(id: 'DESC')