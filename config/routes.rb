Rails.application.routes.draw do
  resources :articles
  resources :projects
  scope do
    post 'picture_create/:id' => 'pictures#picture_create' 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
