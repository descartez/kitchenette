FactoryGirl.define do
  factory :ingredient do
    title { Faker::StarWars.character }
    unit '5 things'
  end
end