class BlogComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog_post

  #attr_accessible :user_id, :blog_post_id, :body
end
