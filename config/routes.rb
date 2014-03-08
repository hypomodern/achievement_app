Rails.application.routes.draw do
  root 'landing#index'

  namespace :admin do
    resources :achievements
    resources :chapters do
      collection do
        put 'reorder' => 'chapters#reorder', as: :reorder
      end
    end
  end
  get '/admin' => 'admin#index', as: :admin

end
