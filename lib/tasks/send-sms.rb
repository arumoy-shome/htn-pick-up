require 'rubygems'
require 'twilio-ruby'
require 'new'
 
account_sid = "AC89c7826521b00c014aaf76e9a8d7d24b"
auth_token = "6cc60e8a25fba34e29f4df82be5ab0e7"
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+12268870829" # Your Twilio number
 
friends = {
"+16474473576" => "Abdul",
"+15196163739" => "Drew",
"+16475319974" => "Aru"
}
friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey #{value}, PickUp happening at 6pm!"
  )
  puts "Sent message to #{value}"
end