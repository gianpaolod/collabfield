Rails.application.routes.draw do
  
  # Devise
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  # Root
  root to: 'pages#index'
end
