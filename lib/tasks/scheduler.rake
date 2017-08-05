desc "To send out today's daily problem"
task :daily_problem => :environment do
  puts "sending daily problem"

  webhook = "https://hooks.slack.com/services/#{ENV['TEST_HOOK']}"
  cohort = Cohort.find(1)
  start_date = cohort.start_date
  today = Time.now.to_date
  time_diff = Time.diff(today, start_date)
  if time_diff[:day] < 6 && time_diff[:day] > 0 && time_diff[:week] >= 0 && time_diff[:week] < 10
    daily_problem = DailyProblem.find_by(week: time_diff[:week] + 1, day: time_diff[:day])

    notifier = Slack::Notifier.new webhook do
      defaults channel: "#math-test",
               username: "Actualize Jack"
    end
    notifier.ping daily_problem.content
  end

  puts "done"
end