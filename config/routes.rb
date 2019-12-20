Rails.application.routes.draw do
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'

  post 'logout' => 'users#logout'
  post 'login' => 'users#login'
  get 'login' => 'users#login_form'

  post 'users/:id/update' => 'users#update'
  get 'users/:id/edit' => 'users#edit'
  get 'users/:id/destroy' => 'users#destroy'
  post 'users/create' => 'users#create'
  get 'signup' => 'users#new'
  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'users/:id/likes' => 'users#likes'

  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  get 'posts/:id/destroy' => 'posts#destroy'
  get 'posts/new' => 'posts#new'

  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end