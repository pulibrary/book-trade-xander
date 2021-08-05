# frozen_string_literal: true
namespace :servers do
  desc "Start postgres server using lando."
  task start: :environment do
    system('lando start')
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
  end

  desc "Stop lando postgres server."
  task stop: :environment do
    system('lando stop')
  end
end
