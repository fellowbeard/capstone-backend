class TwilioController < ApplicationController

  def create
  
    client = Twilio::REST::Client.new(Rails.application.credentials.twilio[:ACCOUNT_SID], Rails.application.credentials.twilio[:AUTH_TOKEN]) 

    client.messages.create(
    from: Rails.application.credentials.twilio[:TWIL_NUMBER],
    to: "+17188770544",
    body: "this is a test"
    )
  end
  
end
