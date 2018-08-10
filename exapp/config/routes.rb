Rails.application.routes.draw do
  resources :test_results
  resources :users
  resources :what_tests
  resources :periods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
