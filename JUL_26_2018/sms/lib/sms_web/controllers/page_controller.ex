defmodule SmsWeb.PageController do
  use SmsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
