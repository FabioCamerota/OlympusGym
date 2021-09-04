Rails.application.routes.draw do

  get 'myreservations/index'
  get 'myprofiles/:id', to: 'myprofiles#show', :via => :get, :as => :myprofiles_show
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' , registrations:
    "users/registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "courses#index"
  resources :courses do
    resources :reviews
    #secondo me è buono mettere only
    resources :reservations
  end
  resources :comunications
  
  get '/users/reviews/:id', to: 'reviews#user_reviews', :as => :user_reviews
  get '/users/reservations/:id', to: 'reservations#user_reservations', :as => :user_reservations

  #Admin Actions
  get '/adm', to: 'admins#index', :as => :admin_view
  get '/adm/ban/:id', to: 'admins#ban_user', :via => :get, :as => :admin_ban_user
  get '/adm/unban/:id', to: 'admins#unban_user', :via => :get, :as => :admin_unban_user
  get '/adm/admin/:id', to: 'admins#admin_user', :via => :get, :as => :admin_admin_user
  get '/adm/unadmin/:id', to: 'admins#unadmin_user', :via => :get, :as => :admin_unadmin_user
end
