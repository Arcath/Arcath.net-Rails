class Tweet < ActiveRecord::Base
	def self.update_from_feed(feed_url)
		feed=Feedzirra::Feed.fetch_and_parse(feed_url)
		feed.entries.each do |entry|
			unless exists? :twitter_id => get_id(entry.url)
				create!(
					:twitter_id => get_id(entry.url),
					:url => entry.url,
					:tweeter => get_user(entry.url),
					:message => entry.title,
					:tweeted_at => entry.published
				)
			end
		end
	end
	
	def self.get_id(url)
		url.scan(/statuses\/(.*)/).join
	end
	
	def self.get_user(url)
		url.scan(/twitter.com\/(.*?)\/statuses/).join
	end
end
