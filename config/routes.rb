Rails.application.routes.draw do
  resources :journals do
    resources :entries
  end

  resources :entries do
    member do
      post :publish
    end
  end
end
