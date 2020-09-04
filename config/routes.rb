Rails.application.routes.draw do
  get 'sessions/new'
  get 't_users/new'
  get 's_users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/s_signup', to: 's_users#new'
  get '/t_signup', to: 't_users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :s_users
  resources :t_users
end
