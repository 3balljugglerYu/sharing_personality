Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions'}
  root to: "enneagrams#index"
  resources :enneagrams, only: [:index, :new, :create, :update]
end
