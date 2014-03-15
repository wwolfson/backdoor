MarchMadness::Application.routes.draw do

resources :owners

resources :teams


root 'welcome#index'
	
end
