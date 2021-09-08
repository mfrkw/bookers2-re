Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  
  resources :books, only: [:index, :create, :destroy, :update]
  resource :likes, only:[:create, :destroy]
end
