Rails.application.routes.draw do
  resources :c_pedidos
  devise_for :users, controllers: {
  omniauth_callbacks: "users/omniautsh_callbacks"
}
  resources :g_estados do
    member do
      get :cidades
    end
  end
  resources :g_enderecos
  resources :g_cidades
  resources :c_produtos_promocoes
  resources :c_produtos
  resources :c_status_pedidos
  resources :c_pagamentos
  resources :c_tipos_pagamentos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "g_enderecos#index"
end
