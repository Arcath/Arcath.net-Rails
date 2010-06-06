class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string :twitter_id
      t.string :url
      t.string :tweeter
      t.string :message
      t.datetime :tweeted_at

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
