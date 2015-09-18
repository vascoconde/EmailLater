class ScheduledEmailJob < ActiveJob::Base
  queue_as :default

  def perform(email)
  	ScheduledEmailMailer.scheduled_email(email).deliver_now
  end
end
