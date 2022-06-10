# frozen_string_literal: true

require 'logger'
require 'sequel'

namespace :app do
  desc 'Start server'
  task :start do
    exec 'bundle exec rackup'
  end

  desc 'Open a console'
  task :console do
    exec 'irb -r ./application'
  end
end

namespace :db do
  desc 'Run migrations'
  task :migrate, [:version] do |_t, args|
    require 'sequel/core'
    Sequel.extension :migration

    version = args[:version].to_i if args[:version]

    Sequel.connect('postgres://localhost:5432',
		   user: 'postgres',
		   password: '123',
		   logger: Logger.new($stderr)) do |db|
		     Sequel::Migrator.run(db, 'db/migrations', target: version)
		   end
  end
end