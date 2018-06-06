Rails.application.routes.draw do
  resources :questions do
    get 'crop'
  end
  root to: 'home#index'
end
