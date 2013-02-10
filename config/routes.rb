DinoRails::Application.routes.draw do
  match '/right' => 'led#right'
  match '/left' => 'led#left'
  match '/start' => 'led#start'

  root to: 'led#index'
end
