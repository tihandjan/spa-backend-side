Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  
  scope module: 'api' do
    resources :articles
    resources :projects
    scope do
      post 'picture_create/:id' => 'pictures#picture_create' 
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
