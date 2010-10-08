Rails.application.routes.draw do |map|
  match "/javascripts/:file.js", :to => "sprockets#show", :via => "get"
end