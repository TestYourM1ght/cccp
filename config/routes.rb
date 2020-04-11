Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  get 'donations' => 'pages#donations', as: 'donations'
resources :posts

end
