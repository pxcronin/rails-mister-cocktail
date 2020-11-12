Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :ingredients, only: [:index, :show]
    resources :doses, only: [:show, :new, :create, :destroy]
  end
end
