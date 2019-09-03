Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, controllers: { registrations: :registrations } do
    get "/users/login", :to => "devise/sessions#new", as: :log_in_session
    get '/users/sign_out', :to => 'devise/sessions#destroy'
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # device_invitable root
  # devise_for :users, controllers: { invitations: 'users_invitations' }
  # devise_for :users, controllers: { invitations: 'users/invitations' }



  # user dashboard :
  get 'dashboard', to: 'users#dashboard', as: :dashboard
  get 'toggle', to: 'users#toggle', as: :toggle


  resources :airdrops do
    get "enter_code", to: 'airdrops#enter_code', as: :enter_code
    # post "submit_code", to: 'airdrops'
    resources :invites, only: %i[index new create]
    post 'invites_user', to: 'users#invites_user', as: :invite_users
  end
  resources :invites, only: %i[show destroy]

  get 'airdrops/:id/register', to: 'airdrops#register', as: :airdrop_register
  #no need for this root we go directly to the thing generzted by devise_invitable
  # patch "users", to: "users#update", as: :user_update

  #routes to release the airdrop :
  get 'airdrops/:id/release', to: 'airdrops#airdrop_release', as: :airdrop_release


  # routes to do for later make a funny troll page
  get 'airdrops/donate', to: 'airdrops#donate', as: :airdrop_donate
end
