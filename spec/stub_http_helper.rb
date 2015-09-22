def stub_email_validator_request(email, valid)
  stub_request(:get, "https://pozzad-email-validator.p.mashape.com/emailvalidator/validateEmail/#{email}").to_return(:status => 200, :body => %Q[{ "isValid": #{valid} }], :headers => {})
end