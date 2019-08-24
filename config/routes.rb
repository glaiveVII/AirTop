Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :airdrops
  # routes to do for later make a funny troll page

  get 'airdrops/donate', to: 'airdrops#donate', as: :airdrop_donate
  resources :kitties
  # routes to do for later make a funny troll page


end
