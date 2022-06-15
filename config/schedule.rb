#Creates a output log for you to view previously run cron jobs
set :output, "log/cron.log" 

#Sets the environment to run during development mode (Set to production by default)
set :environment, "development"

# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
# job_type :TwilioController, '/app/controller/twilio_controler.rb :task :create'
# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 1.minute do
  command "/app/controller/twilio_controler.rb/create"
  # runner "Twilio.create"
  # rake "some:great:rake:task"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
