Oxys::Application.routes.draw do
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
  
  root 'site#index'
    
  get 'gvt/minhas-ligacoes' => 'gvt#minhas_ligacoes', as: :gvt_minhas_ligacoes
  
  resources :gvt, :defaults => {:format => "svg"} do
    resource :index
  end

#   resources :projects do
#     resource :release_burn_down_chart  
#   end 


get "/agrimoney", :to => "agrimoney#index", :as => :agrimoney_index, :defaults => { :content => "home" }
get "/agrimoney/o-evento", :to => "agrimoney#index", :as => :agrimoney_evento, :defaults => { :content => "evento" }
get "/agrimoney/programacao", :to => "agrimoney#index", :as => :agrimoney_programacao, :defaults => { :content => "programacao" }
get "/agrimoney/palestrantes", :to => "agrimoney#index", :as => :agrimoney_palestrantes, :defaults => { :content => "palestrantes" }
get "/agrimoney/local", :to => "agrimoney#index", :as => :agrimoney_local, :defaults => { :content => "local" }
get "/agrimoney/inscricoes", :to => "agrimoney#index", :as => :agrimoney_inscricoes, :defaults => { :content => "inscricoes" }
get "/agrimoney/contato", :to => "agrimoney#index", :as => :agrimoney_contato, :defaults => { :content => "contato" }
  
end
