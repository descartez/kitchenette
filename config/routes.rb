Rails.application.routes.draw do
  authenticate :user do
    resources :recipes, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :recipes, only: [:index, :show]

  get 'welcome/index'

  get 'welcome/about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
