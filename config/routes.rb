Rails.application.routes.draw do

  get("/", {:controller => "delivery", :action => "index" })

  post("/insert_delivery", { :controller => "delivery", :action => "create" })

  post("/modify_delivery/:path_id", { :controller => "delivery", :action => "update" })

  get("/delete_delivery/:path_id", { :controller => "delivery", :action => "destroy" })

  #Routes for User account

  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })

  post("/insert_user", { :controller => "user_authentication", :action => "create" })

  get("edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })

  post("/modify_user", { :controller => "user_authentication", :action => "update" })

  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })

  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })

  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
end
