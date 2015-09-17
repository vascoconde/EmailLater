class Email < ActiveRecord::Base
  after_create :schedule_email

  def schedule_email
  	ScheduledEmailJob.set(wait_until: self.send_date).perform_later(self)
  end
end
