class AdminController < ApplicationController
  before_action :authenticate_user!, :user_is_admin?

  def index
    @published_recipes = Recipe.published
    @unpublished_recipes = Recipe.unpublished
  end

  def publish
    get_recipe
    @recipe.publish!
    redirect_to "/admin"
  end

  def unpublish
    get_recipe
    @recipe.unpublish!
    redirect_to "/admin"
  end

  def delete
    get_recipe
    @recipe.destroy
    redirect_to "/admin"
  end

  private
  def get_recipe
    @recipe ||= Recipe.find(params[:id])
  end
end
