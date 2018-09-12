Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: :show
  resources :subcategories, only: :show
  resources :booktemplates, only: :show
  resources :books, except: [:edit, :update] do
    resources :bookanswers
  end
  resources :questions, only: [:show, :index] do
    resources :answers, only: :index
  end
end
