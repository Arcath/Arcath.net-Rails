class Ability
	include CanCan::Ability
	def role
		@user.role_symbols
	end
	
	def guest
		can :read, BlogPost
		can :read, BlogComment
	end
	
	def member
		based_on :guest
		can :manage, BlogPost
		can :manage, BlogComment
		can :manage, Project
	end
	
	def admin
		based_on :member
	end
end
