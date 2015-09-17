require "httparty"

module EmailValidator
  class EmailValidator
    include HTTParty
  	base_uri 'https://pozzad-email-validator.p.mashape.com'

  	headers = {
  		"X-Mashape-Key" => "Rl6gf5Oh1emshO5dmeoszGCdy4vPp1D7miJjsnU6go2Lj0WjNA",
         "Accept" => "application/json"
  	}

  	def validate(email)
      self.class.get("emailvalidator/validateEmail/#{email}", headers: headers)
    end
  end
end