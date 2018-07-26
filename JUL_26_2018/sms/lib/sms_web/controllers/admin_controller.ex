defmodule SmsWeb.AdminController do
  use SmsWeb, :controller

  def admin(conn, params) do

    # remove default phoenix layout
    conn = put_layout(conn, "admin_layout.html")

    render(conn, "admin.html")
  end

end
