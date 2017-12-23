Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'history', to: 'pages#history'
  get 'realization', to: 'pages#realization'
  get 'solution', to: 'pages#solution'
  get 'contact', to: 'pages#contact'
end


