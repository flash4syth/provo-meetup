defmodule SmsWeb.Router do
  use SmsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SmsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/admin", AdminController, :admin
    get "/admin/:list", AdminController, :admin
  end

  # Other scopes may use custom stacks.
  # scope "/api", SmsWeb do
  #   pipe_through :api
  # end
end
