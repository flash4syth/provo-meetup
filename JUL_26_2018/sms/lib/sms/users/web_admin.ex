defmodule Sms.Users.WebAdmin do
  use Ecto.Schema
  import Ecto.Changeset


  schema "web_admins" do
    field :username, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(web_admin, attrs) do
    web_admin
    |> cast(attrs, [:password, :username])
    |> validate_required([:password, :username])
  end
end
