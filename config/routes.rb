Rails.application.routes.draw do
  namespace :v1 do
    get 'skills/index'
  end
  namespace :v1 do
    get 'nurses/index'
  end
  namespace :v1 do
    get 'departments/index'
  end
  namespace :v1 do
    get 'cities/index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do 
 		resources :cities, only: [:index]
 		resources :skills, only: [:index]
 		resources :departments, only: [:index]
 		resources :nurses, only: [:index]
	end
end
