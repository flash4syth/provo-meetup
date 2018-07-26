defmodule SmsWeb.AdminView do
  use SmsWeb, :view

  def format_number(number) do
    # remove non-digits
    String.replace(number, ~r/[^0123456789]/, "")
  end
end
