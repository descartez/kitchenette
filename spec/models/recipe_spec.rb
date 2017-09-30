require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:title) }

  it { should have_many(:ingredients).dependent(:destroy) }

  it { should validate_presence_of(:directions) }
end
