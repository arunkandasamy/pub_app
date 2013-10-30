PubApp::Application.routes.draw do

  devise_for :users

  resources :users do
    get 'dashboard', on: :member
    resources :articles
  end
  
  get "work", to: "works#index"
  get "work/formhub", to: "works#formhub"
  get "work/google_analytics", to: "works#google_analytics"
  get "work/lighthouseapp", to: "works#lighthouseapp"
  get "work/united_states_zoomable_map", to: "works#united_states_zoomable_map"
  get "work/river", to: "works#river"
  get "work/scatter", to: "works#scatter"
  get "work/sunburst", to: "works#sunburst"
  get "work/heat_map_of_outlets", to: "works#heat_map_of_outlets"

  get 'posts', to: 'articles#index', as: :posts
  get 'blog', to: 'articles#index', as: :posts
  put 'posts_filter', to: 'articles#index', as: :posts_filter
  get 'tag/:tag', to: 'articles#index', as: :tag

  get 'contact' => 'static_pages#contact', :as => "contact"
  get 'security' => 'static_pages#security', :as => "security"
  get 'about' => 'static_pages#about', :as => "about"
  get 'testimonials' => 'static_pages#testimonials', :as => "testimonials"
  get 'presentations' => 'static_pages#presentations', :as => "presentations"
  get "contact_us" => 'static_pages#contact_us', :as => 'contact_us'
  get "labs" => 'static_pages#labs', :as => 'labs'
  get "hacker-culture" => 'static_pages#careers'
  get "careers" => 'static_pages#careers', :as => 'careers'
  get 'cerebro' => 'static_pages#cerebro', :as => "cerebro"
  get 'products/cerebro' => 'static_pages#cerebro', :as => "cerebro"


  root :to => 'static_pages#index'
end
