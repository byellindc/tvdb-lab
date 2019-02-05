Rails.application.routes.draw do
  get '/episodes/search', to: 'episodes#search'
  resources :shows
  resources :episodes
  resources :actors
end
