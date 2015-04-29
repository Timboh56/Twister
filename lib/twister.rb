require "twister/version"

module Twister
  # Your code goes here...

  # Feed is concerned with contact with 
  # twitter API
  class Connection
    def twitter_client
      @twitter ||= Twitter::REST::Client.new do |config|
        config.access_token = oauth_token
        config.access_token_secret = oauth_secret
        config.consumer_key = ENV[:TWITTER_CONSUMER_KEY]
        config.consumer_secret = ENV[:TWITTER_CONSUMER_SECRET]
      end
    end
  end
end
