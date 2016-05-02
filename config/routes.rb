Rails.application.routes.draw do
  resources :banner_sections
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
  get '/about', to: 'home#about_us', as: 'about'
  get '/contact', to: 'home#contact_us', as: 'contact'
  get '/privacy_policy', to: 'home#privicy_policy', as: 'privacy_policy'  
  get '/terms', to: 'home#t_c', as: 'terms' 
  get 'home/custom'
  post 'home/custom'
  get '/careers', to: 'home#career', as: 'careers'
  get '/admin', to: 'dash#index', as: 'admin'
  devise_for :users, :controllers => { :registrations => "registrations" } 
  resources :about_pages

end
