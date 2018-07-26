defmodule SmsWeb.AdminControllerTest do
  use SmsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/admin"
    assert html_response(conn, 200) =~ "Admin Page"
  end

end
