Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "courses#index"
  resources :courses do
    resources :reviews
  end
  
  get '/users/reviews/:id', to: 'reviews#user_reviews', :as => :user_reviews
end
