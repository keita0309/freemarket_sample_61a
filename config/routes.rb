Rails.application.routes.draw do
  get 'purchases/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'

  resources :products, only: [:new, :show]
  resources :users, only: [:create, :destroy, :edit, :show,]
  resources :tests, only: [:index]
  get  'sign-up' => 'tests#top'
  get  'log-in' => 'tests#login'
  get  'step1' => 'tests#step1'
  # 商品購入確認画面 仮のルート
  resources :purchases, only: [:new]
end