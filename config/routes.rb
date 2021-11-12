Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post :sign_in, to: 'sessions#create'
      post :sign_up, to: 'registrations#create'
      delete :sign_out, to: 'sessions#destroy'

      resources :products
    end
  end
end
