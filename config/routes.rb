Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  jsonapi_resources :customers
  jsonapi_resources :employees
  jsonapi_resources :items
  jsonapi_resources :sells
  jsonapi_resources :supplies
  jsonapi_resources :visits

  namespace :admin do
    jsonapi_resources :statuses
  end

  root 'application#landing_page'
end
