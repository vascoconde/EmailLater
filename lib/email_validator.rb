require "httparty"

module EmailValidator
  class EmailValidator
  	def validate(email)
      HTTParty.get "https://pozzad-email-validator.p.mashape.com/emailvalidator/validateEmail/#{email}",
  		headers:{
  		  "X-Mashape-Key" => "Rl6gf5Oh1emshO5dmeoszGCdy4vPp1D7miJjsnU6go2Lj0WjNA",
  		  "Accept" => "application/json"
  		}
    end
  end
end