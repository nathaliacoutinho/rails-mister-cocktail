Rails.application.routes.draw do
  resources :cocktails do
      resources :doses
    end

    resources :doses, only: [ :destroy ]

    root to: "cocktails#index"
  end

