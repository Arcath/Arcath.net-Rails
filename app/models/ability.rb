class Ability
	include CanCan::Ability
	def role
		:member
	end
	
	def guest
		can :read, BlogPost
	end
	
	def member
		based_on :guest
		can :manage, BlogPost
	end
end
