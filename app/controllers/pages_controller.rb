class PagesController < ApplicationController
  def index
    @categories = Category.includes(:transactions).order(id: 'DESC')
  end
end
