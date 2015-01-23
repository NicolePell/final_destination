require 'spec_helper'

describe TwitterClient do

  context 'twitter api' do
    it 'return 3 tweets when searching' do
      twitter = TwitterClient.new
      expect(twitter.search.count).to eq 3
    end
  end

end
