Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  namespace :api do
    namespace :v1 do
      jsonapi_resources :items
      jsonapi_resources :customers
      jsonapi_resources :employees
      jsonapi_resources :sells
      jsonapi_resources :supplies
      jsonapi_resources :visits
      jsonapi_resources :statuses
      jsonapi_resources :entities
      jsonapi_resources :companies
      jsonapi_resources :cashbook_entries
      jsonapi_resources :revenues
    end
  end

  get '/VERSION', to: 'version#index'

  # root 'application#landing_page'
  mount_ember_app :frontend, to: "/"
end
