Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new, :index, :show, :edit]
  end

  resources :songs


end
