require 'rails_helper'

RSpec.describe Recipe, type: :model do
  # It should belong to a user
  it { should belong_to(:user) }

  # It should have a title
  it { should validate_presence_of(:title) }

  # It should have ingredients (dependent destroy)
  it { should have_many(:ingredients).dependent(:destroy) }

  # It should have directions
  it { should validate_presence_of(:directions) }
end
