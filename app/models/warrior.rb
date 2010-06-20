class Warrior < ActiveRecord::Base
	belongs_to :user
  
	TOWERS = {"b" => "Beginner", "i" => "Intermediate"}
  
	def rank
		i=1
		Warrior.all(:conditions => ["tower = ?",self.tower], :order => "score DESC").each do |w|
			return i if w.gist == self.gist
			i+=1
		end
	end
end
