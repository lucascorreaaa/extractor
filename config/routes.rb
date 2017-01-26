Rails.application.routes.draw do
  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'home/index'
  post 'home/page_report'

  root 'home#index'
end
