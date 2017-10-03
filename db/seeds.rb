# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

user = User.create(email:"admin@admin.com", password: "123456")
user.make_admin!

5.times do
  recipe = user.recipes.create!(title: Faker::StarWars.character, ingredients: "Food, Heat", directions: "Bake, Fry, Cook")
end

5.times do
  recipe = user.recipes.create!(title: Faker::StarWars.character, ingredients: "Food, Heat", directions: "Bake, Fry, Cook")
  recipe.publish!
end