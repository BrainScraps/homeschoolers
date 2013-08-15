Homeschoolers::Application.routes.draw do

  get "gettogethers" => "gettogethers#index", as: 'gettogethers'

  post "gettogethers" => "gettogethers#create", as: 'create_gettogether' 

  get "gettogethers/new" => "gettogethers#new", as: 'new_gettogether'

  get "gettogethers/:id/edit" => "gettogethers#edit", as: 'edit_gettogether'

  post "gettogethers/:id/update" => "gettogethers#update", as: 'update_gettogether'

  post "gettogethers/:id/destroy" => "gettogethers#destroy", as: 'destroy_gettogether'

  get "gettogethers/:id/show" => "gettogethers#show", as: 'gettogether'

  post "add_attendee" => "gettogethers#add_attendee"



  resources :students
  resources :outcomes, :except => :new
  #resources :resources

  get "resources/add_resource/:id" => 'resources#add_resource', as: 'add_resource'

  get "outcomes/new/:student_id" => 'outcomes#new', as: 'new_outcome'

  get "resources/index"

  get "resources/new" => 'resources#new', as: 'new_resource'
  post "resources" => 'resources#create'


 delete "resources/:id" => 'resources#destroy', as: 'resources_destroy'

  get   'resources/:id/edit' => 'resources#edit', as: 'resources_edit'
  post  'resources/:id/update' => 'resources#update'

  match "resources/:id" => 'resources#show', as: 'resource'


  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  mount Forem::Engine, :at => '/forums'

  devise_for :educators, :controllers => {:registrations => 'registrations'}


  get   'educators/:id/edit' => 'educators#edit', as: 'educator_edit'
  post  'educators/:id/update' => 'educators#update', as: 'educator_update'

  match 'educators/:id' => 'educators#show', as: 'educator'

  get "static_pages/home"

  root to: 'static_pages#home'
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

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

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
