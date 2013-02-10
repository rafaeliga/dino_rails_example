DinoRails::Application.routes.draw do
  match '/right' => 'led#right'
  match '/left' => 'led#left'

  root to: 'led#index'
end
