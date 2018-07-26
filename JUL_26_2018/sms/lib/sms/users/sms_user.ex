defmodule Sms.Users.SmsUser do
  use Ecto.Schema
  import Ecto.Changeset
  alias Sms.Users.EctoEnum

  schema "sms_users" do
    field :is_admin, :boolean, default: false
    field :number, :string
    field :status, EctoEnum.StatusEnum

    timestamps()
  end

  @doc false
  def changeset(sms_user, attrs) do
    sms_user
    |> cast(attrs, [:number, :is_admin])
    |> validate_required([])
  end
end
