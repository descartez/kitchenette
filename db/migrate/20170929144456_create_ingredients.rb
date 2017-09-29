class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :title
      t.string :unit
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
