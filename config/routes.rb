Rails.application.routes.draw do
  root to: 'flats#index'
  # http_verb '/path', to: 'controller#action', as: :prefix
  get '/flats/:id', to: 'flats#show', as: :flat
end
