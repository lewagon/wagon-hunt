Rails.application.routes.draw do
  root to: 'pages#home'
  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"


  resources :products


  # For details on the D

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
