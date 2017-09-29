require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  # It should belong to a recipe
  it { should belong_to(:recipe) }

  # It should have a title
  it { should validate_presence_of(:title) }

  # It should have a unit of measurement
  it { should validate_presence_of(:unit) }

end
