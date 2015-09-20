require 'rubygems'
require 'twilio-ruby'

class SMS

	#function to deploy notification message
	def send_message(message)
	    @user = current_user
	    twilio_number = ENV['+12268870829']
	    @client = Twilio::REST::Client.new ENV['AC89c7826521b00c014aaf76e9a8d7d24b'],
	     ENV['6cc60e8a25fba34e29f4df82be5ab0e7']
	    message = @client.account.messages.create(
	      :from => twilio_number,
	      :to => @user.phone_number,
	      :body => message
    )
    puts message.to
  end

end