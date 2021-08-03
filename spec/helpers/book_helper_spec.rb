# frozen_string_literal: true
require "rails_helper"

describe BookHelper, type: :helper do
  describe "#posted_time_ago" do
    it "returns time ago in minutes depending on length" do
      book = build(:book)
      allow(book).to receive(:created_at).and_return(Time.zone.now - 60)
      expect(posted_time_ago(book)).to eq("1 minute")
      allow(book).to receive(:created_at).and_return(Time.zone.now - 360)
      expect(posted_time_ago(book)).to eq("6 minutes")
    end
    it "returns time ago in hours depending on length" do
      book = build(:book)
      allow(book).to receive(:created_at).and_return(Time.zone.now - 3600)
      expect(posted_time_ago(book)).to eq("1 hour")
      allow(book).to receive(:created_at).and_return(Time.zone.now - 36_000)
      expect(posted_time_ago(book)).to eq("10 hours")
    end
    it "returns time ago in days depending on length" do
      book = build(:book)
      allow(book).to receive(:created_at).and_return(Time.zone.now - 86_400)
      expect(posted_time_ago(book)).to eq("1 day")
      allow(book).to receive(:created_at).and_return(Time.zone.now - 864_000)
      expect(posted_time_ago(book)).to eq("10 days")
    end
  end
end
