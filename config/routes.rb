Rails.application.routes.draw do
  get("/", {:controller => 'game', :action => 'main'})
  get("/dice/:num/:sides", {:controller => 'game', :action => 'flexible'})
end
