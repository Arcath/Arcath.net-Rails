task :update_tweets => :environment do
	feed = "http://twitter.com/statuses/user_timeline/44645512.rss"
	Tweet.update_from_feed(feed)
end
