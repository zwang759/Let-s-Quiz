Rails.application.routes.draw do
  root 'index#home'

  get 'users/index'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/drop/:question_id', to: 'users#drop'

  get '/questions', to: 'questions#index'
  get '/scores', to: 'scores#index'

  get '/created_question', to: 'users#created_question'

  get 'index/show'
  get '/challenge', to: 'index#question'
  get '/answer', to: 'index#answer'

  resources :questions
  resources :tags
  resources :scores
  resources :users

end