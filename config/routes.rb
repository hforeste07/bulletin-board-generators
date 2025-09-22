Rails.application.routes.draw do
  get("/", { :controller => "boards", :action => "index" })

  resources :listings
  # Routes for the Board resource:

  # CREATE
  post("/insert_board", { :controller => "boards", :action => "create" })
  post("/insert_listing", { :controller => "listings", :action => "create" })
  # READ
  get("/boards", { :controller => "boards", :action => "index" })
  
  get("/boards/:path_id", { :controller => "boards", :action => "show" })

  # UPDATE

  post("/modify_board/:path_id", { :controller => "boards", :action => "update" })

  # DELETE
  get("/delete_board/:path_id", { :controller => "boards", :action => "destroy" })

end
