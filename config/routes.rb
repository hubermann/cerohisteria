Cerohisteria::Application.routes.draw do
  resources :categories

  resources :images
  match '/images/new/(:id)' => 'images#new', :as => 'image_new'
  
  resources :imgcomments



  resources :authors
  
  resources :comments do
    resources :comments
  end

  resources :posts do
    resources :comments
  end
 
  
  root :to => "posts#index"
  
  match '/:slug/:id/', :controller => 'posts', :action => 'show', :as => "viewpost"
  match '/recomendados/', :controller => 'posts', :action => 'recomendados', :as => "recomendados"
  #get '/categoria/:id', :controller => 'posts', :action => 'categoria', :as => "categoria"
  match '/categorias', :controller => 'categories', :action => 'categorias'
  match '/posts/:slug/:id', :controller => 'posts', :action => 'categoria', :as => "categoria"
  match '/recomendados', :controller => 'posts', :action => 'recomendados', :as => "recomendados"
  
  resources :sessions, :posts
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products



  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
