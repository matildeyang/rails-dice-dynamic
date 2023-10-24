Rails.application.routes.draw do
  get("/dice/:param_one/:param_two", { :controller => "game", :action => "dice_roll" })
  get("/", { :controller => "game", :action => "home"})
end
