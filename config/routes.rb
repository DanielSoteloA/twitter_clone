Rails.application.routes.draw do
  resources :tweets
  get 'tweets/index'
  root "tweets#index"
end
