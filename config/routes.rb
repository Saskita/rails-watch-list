Rails.application.routes.draw do
  # resources :movies, only: [ :index, :show ]
  resources :lists do
    resources :bookmarks, only: [ :new, :create, :edit, :update ]
  end
  resources :bookmarks, only: [:destroy]
end

#  resources :restaurants, only: [ :index, :new, :create, :show ] do
#     resources :reviews, only: [:show, :create, :new]
#   end
