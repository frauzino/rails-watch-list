Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[new create show destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
#   get 'lists/new', to: 'lists#new'
#   post 'lists', to: 'lists#create'
#   get 'lists/:id', to: 'lists#show', as: 'list'
#   delete 'lists/:id', to: 'lists#destroy'
