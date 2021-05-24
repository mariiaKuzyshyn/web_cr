Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'posts#index'
  get 'about', to: 'pages#about'
  resources :posts do
    resources :comments
  end
  # get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#devise_for :users do
#  get '/users/sign_out' => 'devise/sessions#destroy'
#end
end