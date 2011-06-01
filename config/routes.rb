Patrimonivila::Application.routes.draw do
  devise_for :users

  resources :locations, only: :index

  root to: "locations#index"
end
