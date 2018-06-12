Rails.application.routes.draw do
  # Routes for the Physician resource:
  # CREATE
  get "/physicians/new", :controller => "physicians", :action => "new"
  post "/create_physician", :controller => "physicians", :action => "create"

  # READ
  get "/physicians", :controller => "physicians", :action => "index"
  get "/physicians/:id", :controller => "physicians", :action => "show"

  # UPDATE
  get "/physicians/:id/edit", :controller => "physicians", :action => "edit"
  post "/update_physician/:id", :controller => "physicians", :action => "update"

  # DELETE
  get "/delete_physician/:id", :controller => "physicians", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
