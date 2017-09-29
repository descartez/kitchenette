class AddsPublishedToRecipes < ActiveRecord::Migration[5.1]
  def change
     add_column :recipes, :published, :boolean, default: false
  end
end
