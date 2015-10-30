Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  jsonapi_resources :customers
  jsonapi_resources :employees
  jsonapi_resources :items
  jsonapi_resources :sells
  jsonapi_resources :supplies
  jsonapi_resources :visits
  jsonapi_resources :statuses

  root 'application#landing_page'
end
