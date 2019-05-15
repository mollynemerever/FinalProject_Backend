Rails.application.routes.draw do
  resources :bookcommentusers
  resources :userbooks
  resources :userfollowerrelationships
  resources :comments
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
