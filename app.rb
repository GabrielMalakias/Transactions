# frozen_string_literal: true
#
require 'sequel'
require 'zeitwerk'
require 'oj'
require 'roda'
require 'dry-validation'

class App < Roda
  DB = Sequel.connect('postgres://localhost:5432', user: 'postgres', password: '123')

  route do |r|
    r.root do
      "Up and running"
    end

    r.on 'api' do
      r.run ::Routes::Api
    end
  end

  def self.load_files!
    loader = Zeitwerk::Loader.new
    loader.push_dir('./lib')
    loader.setup
    loader.eager_load
  end
end

App.load_files!
