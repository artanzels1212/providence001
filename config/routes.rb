Rails.application.routes.draw do
  resources :positions do
    resources :requirement_categories
  end
  resources :carrer_pages
  resources :policy_hedings do
    resources :policy_sub_hedings
  end
  resources :term_pages
  resources :contact_pages
  resources :teams
  root 'home#index'
  get 'home/about_us'
  get 'home/contact_us'
  get 'home/privicy_policy'
  get 'home/t_c'
  get 'home/custom'
  post 'home/custom'
  get 'home/career'  
  get '/admin', to: 'dash#index', as: 'admin'
  devise_for :users, :controllers => { :registrations => "registrations" } 
  resources :about_pages

end
