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
end
