SampleApp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  match '/contact',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  match '/shakin8', to: 'static_pages#home',    via: 'get'
  root to: 'static_pages#comingsoon'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/services',   to: 'static_pages#services',   via: 'get'
  match '/portfolio', to: 'static_pages#portfolio', via: 'get'
  match '/termsandconditions', to: 'static_pages#termsandconditions', via: 'get'
  match '/privacypolicy', to: 'static_pages#privacypolicy', via: 'get'
  match '/theteam', to: 'static_pages#theteam', via: 'get'
end
