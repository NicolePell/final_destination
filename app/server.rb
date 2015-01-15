require 'sinatra'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/final_destination_#{env}")

require './lib/dream'

DataMapper.finalize

DataMapper.auto_upgrade!


get '/' do
  'Hello World'
end
