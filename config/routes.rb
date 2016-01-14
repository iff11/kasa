Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'customers/index'
    end
  end

  devise_for :users, controllers: { sessions: 'sessions' }

  namespace :api do
    namespace :v1 do
      resource :customers
      jsonapi_resources :items
      # jsonapi_resources :customers
      jsonapi_resources :employees
      jsonapi_resources :sells
      jsonapi_resources :supplies
      jsonapi_resources :visits
      jsonapi_resources :statuses
    end
  end

  # root 'application#landing_page'
  mount_ember_app :frontend, to: "/"
end
