Rails.application.routes.draw do

  authenticated :regional_manager do
    root to: "dashboard#show", as: :authenticated_regional_manager_root
  end
  authenticated :user do
    root to: "store#show", as: :authenticated_user_root
  end
  unauthenticated do
    root to: "landing#show", as: :unauthenticated_root
  end

  root to: "landing#show"

  resources :interims
  resources :branches
  resources :employees
  resources :shifts
  devise_for :regional_managers, path: 'regional_managers'
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", invitations: "users/invitations" }
end
