class Email < ActiveRecord::Base
  after_create :validate_email

  #TODO: The API call to validate the email should also run on a job queue 
  # 	 Right now the API is called when the email is created and if the email
  #      is valid it is scheduled to be sent
  def validate_email
    self.verified = EmailValidator::EmailValidator.is_valid(self.to)
  	self.save!
  	schedule_email if verified 
  end

  def schedule_email
  	ScheduledEmailJob.set(wait_until: self.send_date).perform_later(self)
  end
end
