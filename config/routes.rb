Rails.application.routes.draw do
  root to: "movies#index"
  resources :movies
  resources :lists
  resources :bookmarks
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
