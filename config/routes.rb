Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :marks, only: [:index, :update, :show, :destroy, :create]
      resources :cats, only: [:index, :show, :update, :create]
      resources :cat_foods, only: [:show, :index]
      resources :assassins, only: [:show, :index]
    end
  end
end
