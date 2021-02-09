ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'

# Type `rake -T` on your command line to see the available rake tasks.

task :console do
  Pry.start
end

task :env do
  require_relative './config/environment.rb'
end
desc 'check latinzer method'
task :lat => :env do
  Piglatinizer.new("Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo").latinizer
end