Rails.application.routes.draw do

  get 'photo_comments/new'

  get 'photo_comments/create'

  get 'photo_comments/show'

  get 'photo_comments/edit'

  get 'photo_comments/destroy'

  get 'post_comment/new'

  get 'post_comment/create'

  get 'post_comment/show'

  get 'post_comment/edit'

  get 'post_comment/destroy'

  # get 'photos/new'

  # get 'photos/create'

  # get 'photos/show'

  # get 'photos/index'

  # get 'photos/edit'

  # get 'photos/destroy'

  # get 'profiles/create'

  # get 'profiles/edit'

  # get 'profiles/show'

  # get 'profiles/destroy'

  # get 'sessions/create'

  # get 'sessions/index'

  # get 'sessions/show'

  # get 'sessions/destroy'

  devise_for :users

  get 'home/learn' => "home/learn", as: "learn"

  get 'home/whyun' => "home/whyun", as: "whyun"

  get 'home/build' => "home/build", as: "build"

  get 'home/inspiration' => "home/inspiration", as: "inspiration"  

  post 'users/:user_id/issues' => "users#add_issues", as: 'add_issues'

  get 'users/:user_id/profile' => "profiles#show", as: 'user_profile'
  resources :users do
      resource :profile
      resources :photos
      resources :posts
      resources :media
  end

  get 'issues/index_form'
  resources :issues
  
  root 'home#index'

  get 'home/index', as: 'home'

  # get 'issues/new'

  # get 'issues/create'

  # get 'issues/edit'

  # get 'issues/update'

  # get 'issues/destroy'

  # get 'media/new'

  # get 'media/create'

  # get 'media/edit'

  # get 'media/index'

  # get 'media/show'

  # get 'media/destroy'

  # get 'messages/new'

  # get 'messages/create'

  # get 'messages/index'

  # get 'messages/show'

  # get 'messages/destroy'

  # get 'users/new'

  # get 'users/create'

  # get 'users/edit'

  # get 'users/index'

  # get 'users/show'

  # get 'users/destroy'

  # get 'new/create'

  # get 'new/edit'

  # get 'new/index'

  # get 'new/show'

  # get 'new/destroy'

  # get 'new/create'

  # get 'new/edit'

  # get 'new/update'

  # get 'new/index'

  # get 'new/show'

  # get 'new/destroy'

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
