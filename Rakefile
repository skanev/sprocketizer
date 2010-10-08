require "bundler"
Bundler.setup

require "rake"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "mongoid_sphinx/version"

task :gem => :build
task :build do
  system "gem build mongoid-sphinx.gemspec"
end

task :install => :build do
  system "sudo gem install mongoid-sphinx-#{MongoidSphinx::VERSION}.gem"
end

task :release => :build do
  puts "Tagging #{MongoidSphinx::VERSION}..."
  system "git tag -a #{MongoidSphinx::VERSION} -m 'Tagging #{MongoidSphinx::VERSION}'"
  puts "Pushing to Github..."
  system "git push --tags"
  puts "Pushing to rubygems.org..."
  system "gem push mongoid-#{Mongoid::VERSION}.gem"
end

task :default => :build
