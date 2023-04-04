Rails.application.routes.draw do
  resources :journals do
    resources :entries do
      member do
        post :publish
        get :newest
      end
      collection do
        get :newest
      end
    end
  end
  
end
