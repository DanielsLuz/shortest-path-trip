desc 'Opens a pry session with the project files loaded'
task :console do
  require './config/application'
  require 'pry'
  ARGV.clear
  binding.pry
end

task :run do
  require './config/application'
  require 'pry'
end
