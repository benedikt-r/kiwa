FactoryBot.define do
  factory :user do
    email "john@doe.com"
    password "123456789"
    first_name "John"
    last_name "Doe"
    admin false
  end
end
