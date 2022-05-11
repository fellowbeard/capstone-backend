class TwilioController < ApplicationController

  def create
  
    client = Twilio::REST::Client.new(Rails.application.credentials.twilio[:ACCOUNT_SID], Rails.application.credentials.twilio[:AUTH_TOKEN]) 

    client.messages.create(
    from: Rails.application.credentials.twilio[:TWIL_NUMBER],
    to: Rails.application.credentials.twilio[:MY_NUMBER],
    body: "Your Monstera is thirsty!"
    )
  end
  
end
