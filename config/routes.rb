Rails.application.routes.draw do
  root 'landing#index'

  namespace :admin do
    resources :achievements
    resources :chapters
  end
  get '/admin' => 'admin#index', as: :admin

end
