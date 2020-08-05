Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      #user_action food
      get     'foods'         => 'foods#index'
      get     'food/:slug'    => 'foods#show'
      post    'food/create'   => 'foods#create'
      patch   'food/:slug'    => 'foods#update'
      delete  'food/:slug'    => 'foods#destroy'

      #user_action review
      post    'review/create' => 'reviews#create'
      delete  'review/:id'   => 'reviews#destroy'
    end    
  end
end