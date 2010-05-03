ActionController::Routing::Routes.draw do |map|
  map.resources :pages

  map.resources :usages

	#Devise
	map.devise_for :users
	#Resources
	map.resources :splash
	map.resources :blog_posts, :nested => :blog_comments
	#Root
	map.root :controller => 'splash'
end
