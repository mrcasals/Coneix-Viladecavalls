Patrimonivila::Application.routes.draw do
  devise_for :users

  root to: "locations#index"
end
