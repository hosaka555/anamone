Rails.application.routes.draw do
  get 'mypage/page'

  get 'mypage/new'

#一般的なRULの設計　コントローラとアクションの設計を自動で行ってくる
  #get 'view/show' 
  post 'views' => 'views#show'
  resources :view do
    member do
      patch 'cancel'
    end
  end
  get 'view/show'
   get 'home/index'
  post 'requests' => 'request#create'
  
  
=begin
  　#"requests"は任意の名前でＯＫ　しかしindex_html.erbのform_forで生成したオブジェクトがデフォルト　よって任意の名前にするときはURLを変える必要
  　例  <%= form_for Request.new,:url => "requests_path" do |f| %> 　任意の時はrequests_path　ここを変える必要あり
=end  
  devise_for :users
  get 'home/index'
  root 'home#index'
  


  
   
 
  

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
