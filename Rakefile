require "bundler"
Bundler.setup

require "rake"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "sprocketizer/version"

task :gem => :build
task :build do
  system "gem build sprocketizer.gemspec"
end

task :install => :build do
  system "sudo gem install sprocketizer-#{Sprocketizer::VERSION}.gem"
end

task :release => :build do
  puts "Tagging #{Sprocketizer::VERSION}..."
  system "git tag -a #{Sprocketizer::VERSION} -m 'Tagging #{Sprocketizer::VERSION}'"
  puts "Pushing to Github..."
  system "git push --tags"
  puts "Pushing to rubygems.org..."
  system "gem push sprocketizer-#{Sprocketizer::VERSION}.gem"
end

task :default => :build
