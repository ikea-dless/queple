Rails.application.routes.draw do
  devise_for :users

  root 'articles#index'
  resource :profile
  resources :questions
  resources :answers
  resources :articles
  get 'search', to: 'articles#search'
end
