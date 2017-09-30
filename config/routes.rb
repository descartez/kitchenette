Rails.application.routes.draw do
  resources :recipes, only: [:index, :show]

  authenticate :user do
    resources :recipes, only: [:new, :create, :edit, :update]
  end

  resources :admin, only: [:index]

  post 'admin/publish/:id', to: 'admin#publish', as: 'admin_publish'


  get 'welcome/index'

  get 'welcome/about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
