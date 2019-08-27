Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # device_invitable root
  # devise_for :users, controllers: { invitations: 'users_invitations' }
  # devise_for :users, controllers: { invitations: 'users/invitations' }

  resources :airdrops do
    resources :invites, only: %i[index new create]
  end
  resources :invites, only: %i[show destroy]
  get 'airdrops/:id/register', to: 'airdrops#register', as: :airdrop_register

  # routes to do for later make a funny troll page
  get 'airdrops/donate', to: 'airdrops#donate', as: :airdrop_donate
end
