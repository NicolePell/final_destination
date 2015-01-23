require 'sinatra'
require 'data_mapper'
require 'twitter'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/final_destination_#{env}")

require './lib/dream'
require './lib/twitter_client'

DataMapper.finalize

DataMapper.auto_upgrade!

set :views, Proc.new { File.join(root, "views") }

get '/' do
  @dreams = Dream.all

  twitter_client = TwitterClient.new
  @search = twitter_client.search

  erb :index
end

post '/dreams' do
  title = params["title"]
  Dream.create(title: title)

  redirect to '/'
end
