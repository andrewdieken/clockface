Rails.application.routes.draw do
  resources :branches
  devise_for :regional_managers
  devise_for :users
  devise_scope :user do
    authenticated do
      root "dashboard#show"
    end
    unauthenticated do
      root "devise/sessions#new"
    end
  end
end
