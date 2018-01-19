Rails.application.routes.draw do
  #root :to => 'home#index'


  root :to => 'home#index'
  
  get '/faq-articles', :to => 'faqcats#list'
  #get "/newposts" => 'faqposts#create', as: 'newposts'
 
  mount ShopifyApp::Engine, at: '/'
  resources :faqcats
  resources :faqposts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
