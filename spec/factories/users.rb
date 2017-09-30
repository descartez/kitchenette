FactoryGirl.define do
  factory :user do
    email 'a@a.com'
    password '123456'
  end

  factory :admin, class: User do
    email 'admin@admin.com'
    password '123456'
    admin true
  end
end