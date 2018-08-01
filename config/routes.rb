Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'pages#index'
  devise_scope :user do
    authenticated :user do
      root to: 'pages#index'
    end
    unauthenticated :user do
      root to: "devise/sessions#new"
    end
  end
end
