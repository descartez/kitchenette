require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  login_user

  context '#login' do
    it "should have a current_user" do
      expect(subject.current_user).to_not eq(nil)
    end
  end

  context '#recipe' do
    it 'should create a new recipe' do
        recipes_path, params = { title: "wat", ingredients: "wat", directions: "wat"}
        expect(Recipe.where(title: "wat", ingredients: "wat", directions: "wat")).to exist
    end
  end
end
