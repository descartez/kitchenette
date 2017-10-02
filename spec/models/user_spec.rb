require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:recipes) }

  it "should have admin be false on creation" do
    user = create(:user)
    expect(user.admin).to be(false)
  end

  it "should be able to be made admin" do
    user = create(:user)
    user.make_admin!
    expect(user.admin).to be(true)
  end

  it "should be able to be made admin and then remove admin" do
    user = create(:user)
    user.make_admin!
    expect(user.admin).to be(true)
    user.remove_admin!
    expect(user.admin).to be(false)
  end
end
