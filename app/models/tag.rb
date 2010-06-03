class Tag < ActiveRecord::Base
	has_many :taggings, :dependent => :destroy
	has_many :blog_posts, :through => :taggings
end
