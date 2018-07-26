defmodule Sms.SenderTest do
  use SmsWeb.ConnCase, async: true
  alias Sms.Sender

  test "sends message to all registered phone numbers" do
    Sender.broadcast()
  end
end
