Rails.application.routes.draw do
  root to: "main#index"
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end
