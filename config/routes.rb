Rails.application.routes.draw do
  # Routes for the Employment resource:
  # CREATE
  get "/employments/new", :controller => "employments", :action => "new"
  post "/create_employment", :controller => "employments", :action => "create"

  # READ
  get "/employments", :controller => "employments", :action => "index"
  get "/employments/:id", :controller => "employments", :action => "show"

  # UPDATE
  get "/employments/:id/edit", :controller => "employments", :action => "edit"
  post "/update_employment/:id", :controller => "employments", :action => "update"

  # DELETE
  get "/delete_employment/:id", :controller => "employments", :action => "destroy"
  #------------------------------

  # Routes for the Office resource:
  # CREATE
  get "/offices/new", :controller => "offices", :action => "new"
  post "/create_office", :controller => "offices", :action => "create"

  # READ
  get "/offices", :controller => "offices", :action => "index"
  get "/offices/:id", :controller => "offices", :action => "show"

  # UPDATE
  get "/offices/:id/edit", :controller => "offices", :action => "edit"
  post "/update_office/:id", :controller => "offices", :action => "update"

  # DELETE
  get "/delete_office/:id", :controller => "offices", :action => "destroy"
  #------------------------------

  # Routes for the Practice resource:
  # CREATE
  get "/practices/new", :controller => "practices", :action => "new"
  post "/create_practice", :controller => "practices", :action => "create"

  # READ
  get "/practices", :controller => "practices", :action => "index"
  get "/practices/:id", :controller => "practices", :action => "show"

  # UPDATE
  get "/practices/:id/edit", :controller => "practices", :action => "edit"
  post "/update_practice/:id", :controller => "practices", :action => "update"

  # DELETE
  get "/delete_practice/:id", :controller => "practices", :action => "destroy"
  #------------------------------

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
