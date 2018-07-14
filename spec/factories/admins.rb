FactoryBot.define do
  factory :admin do
    first_name "MyString"
    last_name "MyString"
    email "MyString@email.de"
    password "MyString5656"
    password_confirmation "MyString5656"
    active true
    approved true
    confirmed true
  end
end
