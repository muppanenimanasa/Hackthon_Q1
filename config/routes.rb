Rails.application.routes.draw do
  # get 'commands/index'

  # get 'commands/show'

  root :to => "commands#index"
  get "commands/sidekiq_status"
  get "commands/stop_sidekiq"
  get "commands/start_sidekiq"
  get "commands/nginx_status"
  get "commands/stop_nginx"
  get "commands/start_nginx"
  get "commands/restart_nginx"
  get "commands/solr_status"
  get "commands/stop_solr"
  get "commands/start_solr"
  get "commands/restart_solr"
  get "commands/redis_status"
  get "commands/stop_redis"
  get "commands/start_redis"
  get "commands/redis_status"
  get "commands/cpu_util_show"
  get "commands/sys_ip"
  get "commands/pass_status"
  get "commands/pass_restart"

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
