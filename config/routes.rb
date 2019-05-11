Rails.application.routes.draw do
  devise_for :users

  root controller: :listings, action: :index

  resources :listings, only: [:new, :show, :create] do
    resources :offers
  end

  resources :profiles, only: [:new, :create]

end
