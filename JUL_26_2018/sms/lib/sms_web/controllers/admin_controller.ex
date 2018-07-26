defmodule SmsWeb.AdminController do
  use SmsWeb, :controller

  def admin(conn, params) do

    conn = assign(conn, :selected_list params[list])
    
    # remove default phoenix layout
    conn = put_layout(conn, "admin_layout.html")

    render(conn, "admin.html")
  end

end
