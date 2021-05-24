Rails.application.routes.draw do
  # We want the root to be the list of all flats:
  root to: 'flats#index'
  # We want one show page per flat, using their id in the URL:
  # This didn't have a prefix in rails routes so we created one with 'as:'
  get '/flats/:id', to: 'flats#show', as: :flat
end
