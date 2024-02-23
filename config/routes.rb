Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  resources :lists, only: %i[index show create] do
    resources :bookmarks, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
  resources :movies, only: %i[destroy]
end
