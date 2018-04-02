Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
    resources :playlists, except: [:new, :edit]
    resources :songs, except: [:new, :show, :edit]
  end
end
