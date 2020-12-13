Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'movies#index'
  get 'home/index'
  get 'mypage' => 'users#mypage'
  get 'queue' => 'moviequeues#index'
  get 'order' => 'orders#index'
  

  resources :movies do 
    collection do 
      get :search
    end
    member do 
      put :toggle_like
    end
  end 

  resources :orders do
  end

  resources :ratings do
  end

  resources :moviequeue do
  end

  resources :actors do 
    collection do 
      get :search
    end
  end 

end
