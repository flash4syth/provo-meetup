defmodule Sms.Repo.Migrations.CreateSmsUsers do
  use Ecto.Migration

  def change do
    create table(:sms_users) do
      add :number, :string
      add :is_admin, :boolean, default: false, null: false

      timestamps()
    end

    create table(:web_admins) do
      add :username, :string
      add :password, :string

      timestamps()
    end

  end
end
