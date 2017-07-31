class SendDailyProblemJob < ApplicationJob
  queue_as :default

  def perform
    webhook = "https://hooks.slack.com/services/#{ENV['TEST_HOOK']}"
    cohort = Cohort.find(1)
    start_date = cohort.start_date
    today = Time.now.to_date
    time_diff = Time.diff(today, start_date)
    daily_problem = DailyProblem.find_by(week: time_diff[:week], day: time_diff[:day])

    notifier = Slack::Notifier.new webhook do
      defaults channel: "#math-test",
               username: "Actualize Jack"
    end
    notifier.ping daily_problem.content
  end
end
