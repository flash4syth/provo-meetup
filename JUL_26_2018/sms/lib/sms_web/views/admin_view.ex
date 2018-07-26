defmodule SmsWeb.AdminView do
  use SmsWeb, :view

  def format_number(number) do
    # remove non-digits
    String.replace(number, ~r/[^0123456789]/, "")
    |> to_charlist
    |> (fn [first, second, third, fourth, fifth, sixth | tail] ->
      [first, second, third, ?-, fourth, fifth, sixth, ?- | tail]
    end).()
  end

  def get_title("registered"), do: "Registered Numbers"
  def get_title("stop"), do: "Stop Numbers"
  def get_title("requests"), do: "Subscription Requested Numbers"
  def get_title("admin"), do: "Admin Numbers"

end
