require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  login_admin

  context '#login' do
    it "should have a current_user" do
      expect(subject.current_user).to_not be(nil)
    end

    it 'should be an admin' do
      expect(subject.current_user.admin).to be(true)
    end
  end

  context '#publish' do
    it 'publishes the recipe' do
      recipe = create(:recipe)
      expect(recipe.published).to be(false)
      admin_publish_path, params={id: recipe.id}
      expect(recipe.published).to be(true)
    end

    it 'unpublishes the recipe after publishing it' do
      recipe = create(:recipe)
      admin_publish_path, params={id: recipe.id}
      expect(recipe.published).to be(true)
      admin_unpublish_path, params={id: recipe.id}
      expect(recipe.published).to be(false)
    end
  end
end
