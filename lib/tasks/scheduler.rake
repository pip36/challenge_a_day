desc "This task is called by the Heroku scheduler add-on"
task :set_daily_challenges => :environment do
  puts "Setting challenges..."
  User.set_challenge
  puts "done."
end
