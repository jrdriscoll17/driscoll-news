Rails.application.routes.draw do
  root to: 'welcome#home'
  devise_for :users

  resources :users, only: [:show] do
    resources :articles, only: [:index, :destroy]
  end
  
  resources :articles

  get '/search' => 'article#search'
end
