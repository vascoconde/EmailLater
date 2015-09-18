class ScheduledEmailMailer < ApplicationMailer
  def scheduled_email(email)
    mail(to: email.to, from:email.to, subject: email.subject, body: email.body)
  end
end
