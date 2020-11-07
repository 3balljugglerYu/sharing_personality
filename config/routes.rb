Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions'}
  root to: "enneagrams#index"
  resources :enneagrams, only: [:index, :new, :create, :update]
  resources :users, only: [:show]
end
