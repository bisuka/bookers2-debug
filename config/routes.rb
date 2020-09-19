Rails.application.routes.draw do
# 　devise_forは一番上に記述してあげないとログイン画面が機能しない
  devise_for :users
  root 'home#top'
  get 'home/about'

  resources :users, only: [:show,:index,:edit,:update]
  resources :books
end