class Email < ActiveRecord::Base
  after_create :schedule_email

  def schedule_email
  	response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

  	ScheduledEmailJob.set(wait_until: self.send_date).perform_later(self)
  end
end
