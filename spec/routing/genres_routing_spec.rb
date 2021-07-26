# frozen_string_literal: true
require "rails_helper"

RSpec.describe GenresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/genres").to route_to("genres#index")
    end

    it "do not routes to new" do
      expect(get: "/genres/new").to_not route_to("genres#new")
    end

    it "routes to #show" do
      expect(get: "/genres/1").to route_to("genres#show", id: "1")
    end
  end
end