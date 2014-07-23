Rails.application.routes.draw do

  root 'articles#index'

  resources :users

  resources :articles, :path => "blog" do
    resources :commments
  end

  resources :sessions, only: [:new, :create]

  get '/sessions/delete', to: "sessions#destroy"
end
