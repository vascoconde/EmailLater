class Email < ActiveRecord::Base
  after_create :validate_email, :schedule_email

  def schedule_email
  	ScheduledEmailJob.set(wait_until: self.send_date).perform_later(self)
  end

  def validate_email
    self.verified = EmailValidator::EmailValidator.is_valid(self.to)
  	self.save!
  end
end
