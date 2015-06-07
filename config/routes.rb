Blog::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#landing'

  # Main menu
  get 'post' => 'home#post'
  get 'post/:id' => 'home#post_read'
  get 'about' => 'home#about'
  get 'project' => 'home#project'

  # Japanese page
  scope '/japanese' do
    get '/' => 'japanese#index'
    get 'novel' => 'japanese#novel'
    get 'novel/:name' => 'japanese#novel_read'
    get 'song' => 'japanese#song'
    get 'song/:name' => 'japanese#song_read'
  end

  # Dashboard page
  get 'signin' => 'dashboard#signin'
  post 'signin' => 'dashboard#submit'
  get 'signout' => 'dashboard#signout'
  get 'newpost' => 'dashboard#post_new'
  get 'newcategory' => 'dashboard#cat_new'
  get 'newnovel' => 'dashboard#novel_new'
  get 'newsong' => 'dashboard#song_new' 

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
