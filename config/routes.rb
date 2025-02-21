Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  #Director Table
  get("/directors", { :controller => "misc", :action => "directors" })
end
