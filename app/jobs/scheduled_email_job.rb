class ScheduledEmailJob < ActiveJob::Base
  queue_as :default

  def perform(email)
  	raise "Email not verified" unless email.verified
  	ScheduledEmailMailer.scheduled_email(email).deliver_now
  	email.destroy!
  end
end
