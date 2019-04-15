Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions",
    invitations: "users/invitations"
  }

  devise_scope :user do
    authenticated do
      root "dashboard#show"
    end

    unauthenticated do
      root "users/sessions#new"
    end
  end

  resources :interims
  resources :branches
  resources :employees
  resources :shifts
end
