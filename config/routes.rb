Rails.application.routes.draw do |map|
  match "/javascripts/*file.js", :to => "sprocketizer/sprockets#show", :via => "get"
end