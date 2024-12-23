Rails.application.routes.draw do
  # トップ画面をルートパスに設定
  root "top#index"

  # ユーザー登録用ルート
  resources :users, only: [ :new, :create ]
  get 'login', to: 'user_sessions#new', as: :login
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: :logout
  get "/diaries", to: "diaries#index", as: :diaries
  # その他のルート
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
