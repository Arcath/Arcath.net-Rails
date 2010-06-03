ActionController::Routing::Routes.draw do |map|
	#Devise
	map.devise_for :users
	#Special
	map.tag "blog_posts/tag/:tag", :controller => :blog_posts
	map.profile "profile/:id", :controller => :users, :action => :show
	#Resources
	map.resources :splash
	map.resources :blog_posts, :has_many => :blog_comments
	map.resources :pages
	map.resources :usages
	map.resources :projects
	#Root
	map.root :controller => 'splash'
end
