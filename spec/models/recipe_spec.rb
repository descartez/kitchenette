require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:ingredients) }
  it { should validate_presence_of(:directions) }


  context '#publish' do
    it 'should start out unpublished' do
      recipe = create(:recipe)
      expect(recipe.published).to be(false)
    end

    it 'should publish the recipe' do
      recipe = create(:recipe)
      recipe.publish!
      expect(recipe.published).to be(true)
    end

    it 'should unpublish the recipe' do
      recipe = create(:recipe)
      recipe.publish!
      recipe.unpublish!
      expect(recipe.published).to be(false)
    end
  end
end
