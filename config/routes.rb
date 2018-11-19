Rails.application.routes.draw do
  
  # Devise
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  # Root
  root to: 'pages#index'
end
