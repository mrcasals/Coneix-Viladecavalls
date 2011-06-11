Patrimonivila::Application.routes.draw do
  devise_for :users

  resources :locations, only: :index

  namespace :admin do
    resources :locations
  end
  root to: "locations#index"
end
