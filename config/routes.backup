Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'batchupdate', to: 'images#batch_update'
  get 'list', to: 'rimages#list'
  get 'about', to: 'pages#about', as: :about
  get 'test', to: 'pages#test'
  get 'payment', to: 'pages#payment'
  get 'bookedit2', to: 'books#bookedit2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: :show
  resources :subcategories, only: :show
  resources :booktemplates
  resources :books
  resources :questions, only: [:show, :index] do
    resources :answers, only: :index
  end
  resources :booktexts, only: [:create, :update]
  resources :orders, except: :destroy

  resources :users, only: [:show, :update]
  resources :rimages, only: [:index, :create, :new, :show]
  resources :images

  # post 'booka', to: 'books#createa', as: :booka
  patch 'booka/:id', to: 'books#updatea'
  patch 'booktextblock/:id', to: 'books#update_textblock'
end
