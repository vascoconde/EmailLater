require 'rails_helper'

RSpec.describe Email, type: :model do
  
  context "valid email" do
  	let(:email) { "hello@example.com" }
    it "the validated field should be true" do
	  stub_email_validator_request(email, true)
      expect {
      	Email.create(send_date: DateTime.tomorrow, to:email)
      }.to change{ActiveJob::Base.queue_adapter.enqueued_jobs.count}.by(1)
    end
  end

  context "unvalid email" do
    let(:email) { "hello@example.unvalidemail" }    
    it "should not add job to queue" do
      stub_email_validator_request(email, false)
      expect {
      	Email.create(send_date: DateTime.tomorrow, to:email)
      }.to change{ActiveJob::Base.queue_adapter.enqueued_jobs.count}.by(0)
    end
  end

end
