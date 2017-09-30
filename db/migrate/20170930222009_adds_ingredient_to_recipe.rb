class AddsIngredientToRecipe < ActiveRecord::Migration[5.1]
  def change
     add_column :recipes, :ingredients, :text, default: ""
  end
end
