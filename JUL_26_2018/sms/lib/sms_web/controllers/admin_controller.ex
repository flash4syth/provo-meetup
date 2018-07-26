defmodule SmsWeb.AdminController do
  use SmsWeb, :controller
  alias Sms.Users

  def admin(conn, params) do

    number_list =
      case params["list"] do
        "registered" -> Users.registered_sms_users()
        "stop" -> Users.stop_sms_users()
        "requests" -> Users.requested_sms_users()
        "admin" -> Users.admin_sms_users()
        nil -> Users.registered_sms_users()
      end

    # remove default phoenix layout
    conn =
      put_layout(conn, "admin_layout.html")
      |> assign(:list_type, params["list"])
      |> assign(:number_list, number_list)


    render(conn, "admin.html")
  end

end
