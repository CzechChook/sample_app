Rails.application.routes.draw do
  get "users/new"
  #home_page route
  root to: 'static_pages#home'
  #static_pages route
  match '/help' => 'static_pages#help',via: 'get'
  match '/about' => 'static_pages#about',via: 'get'  
  match '/contact' => 'static_pages#contact', via: 'get'
  #user_pages route
  match '/signup' => 'users#new', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
