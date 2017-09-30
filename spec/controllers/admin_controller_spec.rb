require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  context '#publish' do
    it 'publishes the recipe' do
      recipe = create(:recipe)
      admin_publish_path(recipe.id)
      expect(recipe.published).to be(true)
    end
  end
end
