# frozen_string_literal: true
require 'rails_helper'
require 'sidekiq/testing'

RSpec.describe DeleteWarning do
  it "updates old attribute after performing job" do
    described_class.clear
    book = create(:book)
    described_class.perform_async(book.id)
    described_class.drain
    expect(Book.find(book.id)).to be_truthy
  end
  it "schedules jobs" do
    book = build(:book)
    expect do
      described_class.perform_in(5.days, book.id)
    end.to change(described_class.jobs, :size).by(1)
  end
end
