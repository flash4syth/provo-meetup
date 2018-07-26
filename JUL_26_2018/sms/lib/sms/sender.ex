defmodule Sms.Sender do
  alias Sms.Users

  def broadcast() do

    number_list = Users.registered_sms_users()
    account_sid = System.get_env("ACCOUNT_SID")
    auth_token = System.get_env("AUTH_TOKEN")
    twilio_number = System.get_env("TWILIO_NUMBER")

    Enum.each(number_list, fn number ->

      System.cmd("curl", ~w[
        -X POST https://api.twilio.com/2010-04-01/Accounts/#{account_sid}/Messages.json
        --data-urlencode "From=+1#{twilio_number}"
        --data-urlencode "Body=Hello from the SMS app!"
        --data-urlencode "To=+1#{number}"
        -u #{account_sid}:#{auth_token}
        ])
    end)
  end
end
