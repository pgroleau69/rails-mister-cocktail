Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: [:show, :new, :create, :index] do
    resources :doses, only: [:new, :create, :delete]
  end
end
