Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  get 'donations' => 'pages#donations', as: 'donations'
resources :posts do
  resources :comments #сделали ссылки на комменты внутри юрл постов
end
end
