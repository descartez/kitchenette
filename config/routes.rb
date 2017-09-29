Rails.application.routes.draw do
  resources :recipes

  get 'welcome/index'

  get 'welcome/about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
