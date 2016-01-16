Rails.application.routes.draw do
  devise_for :users

  resource :profile
  resources :questions
  resources :answers
end
