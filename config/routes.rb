Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :marks, only: [:index, :update, :show, :destroy, :create]
      resources :cats, only: [:index, :show, :update, :destroy]
      resources :cat_foods, only: [:show]
      resources :assassins, only: [:show]
    end
  end
end
