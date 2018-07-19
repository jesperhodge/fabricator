# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.unique.email
    password 'MyString5656'
    password_confirmation 'MyString5656'
    active true
    approved true
    confirmed true
  end
end
