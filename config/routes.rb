Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'index#home'
  # get 'index/home'

  get '/courses', to: 'courses#index'
  get '/instructors', to: 'instructors#index'
  get '/subjects', to: 'subjects#index'

  get 'users/index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/enrolled_course', to: 'users#enrolled_course'
  post '/enroll/:course_id', to: 'users#enroll'
  post '/drop/:course_id', to: 'users#drop'


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/search', to: 'index#search'
  # post '/search', to: 'index#create'
  get '/search_result', to: 'index#result'
  get 'index/show'

  resources :questions
  resources :tags
  resources :scoreboard
  resources :users

end