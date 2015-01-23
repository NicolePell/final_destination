require 'twitter'

class TwitterClient

  attr_reader :client

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['Twitter_Consumer_Key']
      config.consumer_secret = ENV['Twitter_Consumer_Secret']
      config.access_token = ENV['Twitter_Oauth_Token']
      config.access_token_secret = ENV['Twitter_Oauth_Secret']
    end
  end

  def search
    @client.search("bucket list", result_type: "recent").take(3).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end

end
