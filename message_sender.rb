require 'rubygems'
require 'twilio-ruby'

account_sid = ENV["ACCOUNT_SID"]
auth_token  = ENV["AUTH_TOKEN"]

client = Twilio::REST::Client.new(account_sid, auth_token)
from   = "+18127270809" # Your Twilio number
data   = {
  :from => from,
  :to => "+12318881216", # format of this number needs to be "+1" at the beginning of the area code and phone number
  :body => "I'm using the Twillo API!",
}

client.account.messages.create(data)

puts "Sent message!"
