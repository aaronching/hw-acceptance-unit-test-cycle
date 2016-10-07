Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  get '/movies/:id/samedirector' => 'movies#samedirector', as: :same_director
end
