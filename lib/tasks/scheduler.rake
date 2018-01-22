desc "To send out today's daily problem"
task :daily_problem => :environment do
  puts "sending daily problem"

  webhook = "https://hooks.slack.com/services/#{ENV['TEST_HOOK']}"
  cohort = Cohort.find(1)
  start_date = cohort.start_date
  today = Time.now.to_date
  time_diff = Time.diff(today, start_date, '%w %d')
  puts "time_diff"
  p time_diff
  puts

  if time_diff.include?("weeks")
    time_diff_split = time_diff[:diff].split(' weeks ')
  else
    time_diff_split = time_diff[:diff].split(' week ')
  end

  puts "time_diff_split"
  p time_diff_split
  puts
  diff_weeks = time_diff_split[0].to_i
  
  if time_diff_split[1].include?("days")
    diff_days = time_diff_split[1].gsub(" days", "").to_i
  else
    diff_days = time_diff_split[1].gsub(" day", "").to_i
  end

  puts "...finding daily problem for Week #{diff_weeks}, Day #{diff_days}"

  if diff_days < 6 && diff_days > 0 && diff_weeks >= 0 && diff_weeks < 10
    daily_problem = DailyProblem.find_by(week: diff_weeks + 1, day: diff_days)

    notifier = Slack::Notifier.new webhook do
      defaults channel: "#daily_problems",
               username: "Actualize Jack"
    end
    notifier.ping daily_problem.content
  end

  puts "done"
end