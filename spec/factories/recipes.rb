FactoryGirl.define do
  factory :recipe do
    title { Faker::StarWars.character }
    ingredients "Food, Heat"
    directions "Bake, Fry, Cook"
    published false
    user
  end
end