ActionController::Routing::Routes.draw do |map|
	map.resources :markers, :only => [:index,:show,:create]
end
