require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:recipes) }

  it "should have admin be false on creation" do
    user = create(:user)
    expect(user.admin).to be(false)
  end
end
