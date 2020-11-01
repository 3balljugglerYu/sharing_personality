Rails.application.routes.draw do
  devise_for :users
  root to: "enneagrams#index"
  resources :enneagrams, only: [:index, :new]
end
