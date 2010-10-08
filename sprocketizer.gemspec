# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "sprocketizer/version"

Gem::Specification.new do |s|
  s.name        = "sprocketizer"
  s.version     = Sprocketizer::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matt Hodgson"]
  s.email       = ["mhodgson@scenario4.com"]
  s.homepage    = "http://github.com/mhodgson/sprocketizer"
  s.summary     = "A gem for integrating Sprockets with Rails 3."
  s.description = "A gem for integrating Sprockets with Rails 3."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency("sprockets", ["= 1.0.2"])

  s.files        = Dir.glob("app/**/*") + Dir.glob("config/**/*") + Dir.glob("lib/**/*") + %w(README.rdoc)
  s.require_path = 'lib'
end
