Rails.application.routes.draw do
  resources :snippets
  root to: 'snippets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
