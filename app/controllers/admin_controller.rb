class AdminController < ApplicationController
  before_action :authenticate_user!, :user_is_admin?

  def index
    @published_recipes = Recipe.published
    @unpublished_recipes = Recipe.unpublished
  end

  def publish

    puts "-"*18
    puts "Publishing... #{@recipe}"
    puts "-"*18

    @recipe.publish!

    puts "*"*18
    puts "Published! #{@recipe}"
    puts "*"*18
    redirect_to "/admin"
  end

  def unpublish
    get_recipe
    p params
    puts "-"*18
    puts "UNPublishing... #{@recipe}"
    puts "-"*18

    @recipe.unpublish!

    puts "*"*18
    puts "UNPublished! #{@recipe}"
    puts "*"*18
    redirect_to "/admin"
  end

  private
  def get_recipe
    @recipe ||= Recipe.find(params[:id])
  end

  def recipe_params
    params.fetch(:recipe, {}).permit(:title, :directions)
  end
end
