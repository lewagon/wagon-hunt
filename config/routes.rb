Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"


  resources :products
  resources :upvotes, only: [ :create, :destroy ]
end
