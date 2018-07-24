Rails.application.routes.draw do
  resources :top
  root 'top#index'
  get 'top/index'
  get 'input/createtable'
  get 'input/reset'
  post 'register/show'
  post 'register/done'
  post 'input/show'
  post 'input/done'
end
