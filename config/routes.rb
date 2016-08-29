Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :edit, :update, :new]
  end
  resources :songs
end
