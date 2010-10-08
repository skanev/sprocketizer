require 'rails'

module Sprocketizer
 class Engine < Rails::Engine
    engine_name :sprocketizer
    
    paths.app                 = "lib/sprocketizer/engine/app"
    paths.app.controllers     = "lib/sprocketizer/engine/app/controllers"
    paths.app.helpers         = "lib/sprocketizer/engine/app/helpers"
    paths.lib                 = "lib/sprocketizer/engine/lib"
    paths.lib.tasks           = "lib/sprocketizer/engine/lib/tasks"
    paths.config              = "lib/sprocketizer/engine/config"
    paths.config.initializers = "lib/sprocketizer/engine/config/initializers"
    paths.config.routes       = "lib/sprocketizer/engine/config/routes.rb"
  end
end