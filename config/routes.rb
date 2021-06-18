Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :characters, only:[:index, :show]
    end
  end

  root to: 'pages#home'
end
