Rails.application.routes.draw do
  get("/square/new", { :controller => "calculations", :action => "square_form" })
  get("/square/results", { :controller => "calculations", :action => "square_results" })
  
  root({ :controller => "calculations", :action => "square_form" })
end

