Rails.application.routes.draw do
<<<<<<< HEAD
  root 'twees#index'
  resources :twees
=======
>>>>>>> 7bced45a7c2ea725ad22c114babc786361e016e0
  resources :twees do
    collection do
      post :confirm
    end
  end
end
