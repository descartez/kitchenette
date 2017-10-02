Rails.application.routes.draw do
  authenticate :user do
    resources :recipes, only: [:new, :create, :edit, :update]
  end

  resources :recipes, only: [:index, :show]

  resources :admin, only: [:index]
  post 'admin/publish/:id', to: 'admin#publish', as: 'admin_publish'
  post 'admin/unpublish/:id', to: 'admin#unpublish', as: 'admin_unpublish'
  delete 'admin/delete/:id', to: 'admin#delete', as: 'admin_delete'

  get 'welcome/about'

  devise_for :users

  root to: "recipes#index"
end
