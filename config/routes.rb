Rails.application.routes.draw do
  get 'interests/new'

  get 'interests/create'

  get 'interests/index'

  get 'interests/edit'

  get 'interests/update'

  get 'interests/destroy'

  get 'media/new'

  get 'media/create'

  get 'media/edit'

  get 'media/index'

  get 'media/show'

  get 'media/destroy'

  get 'messages/new'

  get 'messages/create'

  get 'messages/index'

  get 'messages/show'

  get 'messages/destroy'

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/index'

  get 'posts/show'

  get 'posts/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/index'

  get 'users/show'

  get 'users/destroy'

  get 'new/create'

  get 'new/edit'

  get 'new/index'

  get 'new/show'

  get 'new/destroy'

  get 'new/create'

  get 'new/edit'

  get 'new/update'

  get 'new/index'

  get 'new/show'

  get 'new/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
