Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  get '/capture', to: 'pokemon#capture'
  patch 'capture' => 'pokemon#capture'

  get '/damage', to: 'pokemon#damage'
  patch 'damage' => 'pokemon#damage'

  get '/pokemons/new', to: 'pokemons#new'
  post '/pokemons/create', to: 'pokemons#create'

  patch 'create' => 'pokemons#create'
  post '/pokemons/create', to: 'pokemons#create'
  get '/pokemons/create', to: 'pokemons#create'

  patch '/pokemons/new' => 'pokemons#new'
  get '/pokemons/new', to: 'pokemons#new'
end
