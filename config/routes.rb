Rails.application.routes.draw do
  
  devise_for :users
  resources :proys
  resources :proyectos
  root "landpage#index"
  get 'landpage/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
