require 'resque/tasks'
require 'resque/scheduler/tasks'

task 'resque:setup' => :environment do
  require 'resque'
  require 'resque/scheduler'

  ENV['QUEUE'] = "*"

  Resque.redis = ENV["REDIS_URL"]
end

desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:work"
