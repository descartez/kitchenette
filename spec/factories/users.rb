FactoryGirl.define do
  factory :user do
    email 'test@test.edu'
    password '123456'
  end

  factory :admin, class: User do
    email 'admin@admin.edu'
    password '123456'
    admin true
  end
end