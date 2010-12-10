Rails.application.routes.draw do
  match "/javascripts/*file.js", :to => "sprocketizer/sprockets#show", :via => "get"
end
