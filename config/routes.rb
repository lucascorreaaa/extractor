Rails.application.routes.draw do
  get 'auth/facebook/callback', to: 'home#index'
  get 'auth/failure', to: redirect('/')

# MUDAR DE get PARA "GET" !!!!!

  get 'home/index'

  root 'home#index'
end
