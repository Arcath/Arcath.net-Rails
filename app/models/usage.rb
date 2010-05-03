class Usage < ActiveRecord::Base
  attr_accessible :ammount, :total
  
  def total
  	before = Usage.all(:conditions => ["created_at <= ?",self.created_at], :limit => 30, :order => "created_at DESC")
  	total = 0
  	before.each do |usage|
  		total+=usage.ammount
  	end
  	total
  end
end
