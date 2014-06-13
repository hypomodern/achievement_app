Rails.application.routes.draw do
  root 'landing#index'

  namespace :admin do
    resources :achievements
    resources :props do
      member do
        get 'prop_upload_success', to: 'prop_upload#handle_upload_success'
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
