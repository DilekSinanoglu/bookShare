Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users
  resources :books do
    resources :comments
    resources :exchanges
  end 
  match '/books/:id/exchanges/:id/approve', to: 'exchanges#approve', via: 'get'
  match '/books/:id/exchanges/:id/deny', to: 'exchanges#deny', via: 'get'
  resources :dashboard

  root 'welcome#index'
end
