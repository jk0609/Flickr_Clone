Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'users#index'
  resources :users do
    resources :images
  end

  resources :images do
    resources :comments, :only=>['create']
  end
end
