Rails.application.routes.draw do
  get 'lists/home'
  root to: 'lists#home'
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'
  get 'lists/:id', to: 'lists#show', as: 'list'
  delete 'lists/:id', to: 'lists#destroy'
end
