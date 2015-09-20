require 'rubygems'
require 'twilio-ruby'
 
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC89c7826521b00c014aaf76e9a8d7d24b'
auth_token = '{{ 6cc60e8a25fba34e29f4df82be5ab0e7 }}'

begin
    client = Twilio::REST::Client.new account_sid, auth_token
    client.account.messages.create(
      from => "2268870829",
      to =>   "16474473576",
      body => "Hello World"
    )
rescue Twilio::REST::RequestError => e
    puts e.message
end