defmodule SmsWeb.AdminControllerTest do
  use SmsWeb.ConnCase

  test "GET /admin", %{conn: conn} do
    conn = get conn, "/admin"
    assert html_response(conn, 200) =~ "Admin Page"
  end

  test "GET /admin/registered" do
    conn = get conn, "/admin/registered"
    assert html_response(conn, 200) =~ "Registered Numbers"
  end

  test "GET /admin/requests" do
    conn = get conn, "/admin/requests"
    assert html_response(conn, 200) =~ "Subscription Requests"
  end

  test "GET /admin/stop" do
    conn = get conn, "/admin/stop"
    assert html_response(conn, 200) =~ "Stop Numbers"
  end

  test "GET /admin/admin" do
    conn = get conn, "/admin/admin"
    assert html_response(conn, 200) =~ "Admin Numbers"
  end

  test "GET /admin/twilio" do
    conn = get conn, "/admin/twilio"
    assert html_response(conn, 200) =~ "Twilio Numbers"
  end
end
