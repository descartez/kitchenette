class AdminController < ApplicationController
  before_action :authenticate_user!, :user_is_admin?

  def index
    @published_recipes = Recipe.published
    @unpublished_recipes = Recipe.unpublished
  end

  def publish
    recipe.publish!
    redirect_to :index
  end

  private
    def recipe
      @recipe ||= Recipe.find(params[:id])
    end

    def recipe_params
      params.fetch(:recipe, {}).permit(:title, :directions)
    end
end
