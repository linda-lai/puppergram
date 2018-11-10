Rails.application.routes.draw do
  devise_for :users
  resources :comments
  get 'pages/info'
  resources :puppers
  root to: redirect('/puppers')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
