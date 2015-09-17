class ScheduledEmailJob < ActiveJob::Base
  queue_as :default

  def perform(email)
  	email.sent = true
  	email.save!
  end
end
