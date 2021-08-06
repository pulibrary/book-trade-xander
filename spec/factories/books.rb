# frozen_string_literal: true
FactoryBot.define do
  factory :book do
    title { "The Title" }
    author { "Mr Author" }
    description { "Good condition with 300 pages" }
    old { false }
    association :user, factory: :user
    association :genre, factory: :genre
  end
end
