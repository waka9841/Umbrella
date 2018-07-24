Rails.application.routes.draw do
  resources :top
  root 'top#index'
  get 'input_done/index'
  get 'input_done/show'
  get 'register_done/index'
  get 'register_done/show'
  get 'register/index'
  get 'register/show'
  get 'input/index'
  get 'input/show'
  get 'top/index'
  get 'top/show'
end
