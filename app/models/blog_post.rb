class BlogPost < ActiveRecord::Base
  belongs_to :user
  has_many :blog_comments, :dependent => :destroy
  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings
  attr_writer :tag_names
  after_save :assign_tags
  
  def tag_names
  	@tag_names || tags.map(&:name).join(' ')
  end
  
  def linked_tag_names
  	tags.map { |tag| "<a href=\"/blog_posts/tag/#{tag.name.gsub(".","&dot;")}\">#{tag.name}</a>" }.join(' ')
  end
  
  def self.homepage(page,tag,search,perpage)
  	if tag
  		output=Tag.find_by_name(tag.gsub("&dot;",".")).blog_posts.paginate :per_page => perpage, :page => page, :order => "created_at DESC"
  	elsif search
  	
  	else
  		output = paginate :per_page => perpage, :page => page, :order => "created_at DESC"
  	end
  	output
  end
  
  private
  
  def assign_tags
  	if @tag_names
  		self.tags = @tag_names.split(/\s+/).map do |name|
  			Tag.find_or_create_by_name(name)
  		end
  	end
  end
end
