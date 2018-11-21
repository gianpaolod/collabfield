Rails.application.routes.draw do
  
  # Devise
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'registrations#new'
  end

  # Posts
  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end

  # Root
  root to: 'pages#index'
end
