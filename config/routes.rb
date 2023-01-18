Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :recipes, only: %i(index)
      # resources :learning_resources, only: [:show]
      get "learning_resources", to: "learning_resources#show"
      resources :users, only: [:create]
    end
  end
end
