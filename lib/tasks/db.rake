# frozen_string_literal: true
namespace :db do
  desc 'Restarts the development database'
  # rake db:reseed
  task reseed: ['db:drop', 'db:create', 'db:migrate', 'db:seed'] do
    puts 'Completed reseed'
  end
end
