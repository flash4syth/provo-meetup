defmodule SmsWeb.AdminViewTest do
  use SmsWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders admin.html" do
    assert render_to_string(SmsWeb.AdminView, "admin.html", []) =~ ~r/Admin Page/

  end

end
