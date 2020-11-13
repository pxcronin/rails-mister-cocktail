Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :ingredients, only: [:index, :show]
    resources :doses, only: [:show, :new, :create, :destroy]
  end
end
