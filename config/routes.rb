Rails.application.routes.draw do
  root 'landing#index'

  namespace :admin do
    resources :achievements do
      member do
        get 'control', to: 'achievements#control'
        patch 'patch', to: 'achievements#patch'
      end
    end
    resources :props do
      member do
        get 'prop_upload_success', to: 'prop_upload#handle_upload_success'
        get 'prop_control', to: 'props#control'
        patch 'patch', to: 'props#patch'
      end
    end
    resources :chapters do
      collection do
        put 'reorder' => 'chapters#reorder', as: :reorder
      end
    end
  end
  get '/admin' => 'admin#index', as: :admin

end
