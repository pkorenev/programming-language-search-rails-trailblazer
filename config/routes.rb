Rails.application.routes.draw do
  root to: 'languages#index'
  get 'search', to: 'languages#search'
end
