Rails.application.routes.draw do
  resources :top
  root 'top#index'
  get 'register/index'
  get 'register/show'
  post 'register/done'
  get 'input/index'
  get 'input/show'
  post 'input/done'
  get 'top/index'
  get 'top/show'
end
