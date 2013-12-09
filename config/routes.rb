GainBlog::Application.routes.draw do
  resources :categories

  resources :posts

  root :to => "posts#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end