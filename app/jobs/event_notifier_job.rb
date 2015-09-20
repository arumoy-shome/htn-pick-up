require 'rubygems'
require 'twilio-ruby'

# friends = {
# "+16474473576" => "Abdul",
# "+15196163739" => "Drew",
# "+16475319974" => "Aru"
# }

class EventNotifierJob < ActiveJob::Base
  queue_as :default

  def perform(event, all_users)
    account_sid = "AC89c7826521b00c014aaf76e9a8d7d24b"
    auth_token = "6cc60e8a25fba34e29f4df82be5ab0e7"
    client = Twilio::REST::Client.new account_sid, auth_token
    from = "+12268870829" # Your Twilio number

    all_users.each do |user|
      client.account.messages.create(
        :from => from,
        :to => user.phone_number,
        :body => "Hey #{user.name}, there is a #{event.type} event happening at #{event.location} @ #{event.start}"
      )
      Rails.logger.info "Sent message to #{user.name}"
    end
  end
end
