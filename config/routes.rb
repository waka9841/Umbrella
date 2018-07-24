Rails.application.routes.draw do
  resources :top
  root 'top#index'
  get 'input_done/index'
  get 'register/index'
  get 'register/show'
  get 'input/index'
  get 'input/show'
  post 'input/done'
  get 'top/index'
  get 'top/show'
end
