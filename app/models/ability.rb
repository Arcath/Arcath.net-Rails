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
		can :manage, BlogComment
	end
	
	def admin
		based_on :member
		can :manage, Project
		can :manage, BlogPost
	end
end
