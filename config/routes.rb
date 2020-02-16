Rails.application.routes.draw do
  get 'pages/info'

  root to: redirect('/ideas')
  resources :ideas
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
