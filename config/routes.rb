Rails.application.routes.draw do
  root 'twees#index'
  resources :twees
  resources :twees do
    collection do
      post :confirm
    end
  end
end
