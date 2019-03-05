desc 'Opens a pry session with the project files loaded'
task :console do
  require './config/application'
  require 'pry'
  ARGV.clear
  binding.pry
end

namespace :main do
  desc 'Executes `Main::run`'
  desc 'Usage: `bundle exec rake main:run[<path/to/input.txt>,<source>-<target>]`'
  desc 'Example: `bundle exec rake main:run[resources/input-file.txt,GRU-CDG]`'
  task :run, [:input_file, :route] do |t, args|
    require './config/application'
    require 'pry'
    Main.run(args.input_file, args.route, *args.extras)
  end
end
