class ScheduledEmailJob < ActiveJob::Base
  queue_as :default

  def perform(email)
  	ScheduledEmailMailer.scheduled_email(email).deliver_now
  	email.sent = true
  	email.save!
  end
end
