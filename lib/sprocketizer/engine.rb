require 'sprocketizer'
require 'rails'

module Sprocketizer
 class Engine < Rails::Engine
   config.widget_factory_name = "Sprocketizer"
   config.mount_at = '/'
 end
end