class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :lockable, :timeoutable, :confirmable and :activatable
  devise :registerable, :authenticatable, :recoverable,
         :rememberable, :trackable, :validatable
         
  has_many :blog_posts
  has_many :blog_comments

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :username, :role
  
  #Roles
  ROLES = %w[admin moderator author member]
  
  def role_symbols
  	unless username
  		return :guest
  	else
  		return (self.role || :member)
  	end
  end
end
