require "httparty"

module EmailValidator
  class EmailValidator
  	def self.is_valid(email)
      response = HTTParty.get "https://pozzad-email-validator.p.mashape.com/emailvalidator/validateEmail/#{email}",
  		headers:{
  		  "X-Mashape-Key" => ENV['VALIDATOR_KEY'],
  		  "Accept" => "application/json"
  		}
  	  JSON.parse(response.body)['isValid']
    end
  end
end