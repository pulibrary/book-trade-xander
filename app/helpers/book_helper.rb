# frozen_string_literal: true
module BookHelper
  def posted_time_ago(book)
    minutes = ((Time.zone.now - book.created_at) / 60).to_i
    if minutes == 1
      "1 minute"
    elsif minutes < 60
      "#{minutes} minutes"
    elsif minutes == 60
      "1 hour"
    elsif minutes < 1440
      "#{minutes / 60} hours"
    elsif minutes < 2880
      "1 day"
    else
      "#{minutes / 1440} days"
    end
  end
end
