FactoryGirl.define do
  factory :recipe do
    title { Faker::StarWars.character }
    directions "Bake, Fry, Cook"
  end
end