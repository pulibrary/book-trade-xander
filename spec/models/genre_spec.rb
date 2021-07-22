# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Genre, type: :model do
  it "has a genre attribute" do
    genre_test = described_class.create(genre: "SciFi")
    expect(genre_test.genre).to eq("SciFi")
  end
end
