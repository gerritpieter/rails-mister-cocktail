Rails.application.routes.draw do
  get 'doses/new'
  root to: 'cocktails#index'
  resources :cocktails, except: [:index] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: :destroy
end
