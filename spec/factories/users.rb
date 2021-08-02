# frozen_string_literal: true
FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "bob#{n}@gmail.com" }
    name { "Bob Smith" }
    password { "password" }
    password_confirmation { "password" }

    trait :admin do
      admin { true }
    end

    factory :admin_user, traits: [:admin]
  end
end
