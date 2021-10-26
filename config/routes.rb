Rails.application.routes.draw do
  
  resources :orden_entregas
  resources :orden_productos
  resources :orden_proyectos
  resources :ordens do
    collection do
      post :carrito
      get :carrito
    end
  end
  resources :clientes
  resources :productos do
    member do
      get :comprar
    end
  collection do
    get :filter
    end
  end

  resources :categoria
  devise_for :users
  resources :proys
  resources :proyectos
  root "landpage#index"
  get 'landpage/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end