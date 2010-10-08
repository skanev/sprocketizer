require 'erb'
require 'singleton'

module MongoidSphinx
  class Configuration
    include Singleton
    
    attr_accessor :address, :port, :configuration
    
    def client
      @configuration ||= parse_config
      Riddle::Client.new address, port
    end
    
    private

    # Parse the config/sphinx.yml file - if it exists
    #
    def parse_config
      path = "#{Rails.root}/config/sphinx.yml"
      return unless File.exists?(path)

      conf = YAML::load(ERB.new(IO.read(path)).result)[Rails.env]

      conf.each do |key,value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")
      end
    end
    
  end
end