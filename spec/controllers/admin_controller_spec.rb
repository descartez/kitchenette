require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  login_admin

  context '#login' do
    it "should have a current_user" do
      expect(subject.current_user).to_not eq(nil)
    end

    it 'should be an admin' do
      expect(subject.current_user.admin).to eq(true)
    end
  end

  context '#publish' do
    it 'publishes the recipe' do
      recipe = create(:recipe)
      admin_publish_path(recipe.id)
      expect(recipe.published).to be(true)
    end
  end
end
