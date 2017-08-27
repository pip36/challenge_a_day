Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :statuses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'static_pages#index'
  get 'stats', to: 'static_pages#stats'
  root 'static_pages#index'
end
