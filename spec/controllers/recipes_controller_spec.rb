require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  login_user

  context '#login' do
    it "should have a current_user" do
      expect(subject.current_user).to_not eq(nil)
    end
  end

  context '#recipe' do
    xit 'should create a new recipe' do
      post :recipes, params: {}
    end

    xit 'should be able to change that recipe' do

    end
  end
end
