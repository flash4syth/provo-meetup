defmodule Sms.Repo.Migrations.CreateSmsUsers do
  use Ecto.Migration
  alias Sms.Users.EctoEnum

  def up do

    EctoEnum.StatusEnum.create_type
    create table(:sms_users) do
      add :number, :string
      add :is_admin, :boolean, default: false, null: false
      add :status, :status

      timestamps()
    end

    create table(:web_admins) do
      add :username, :string
      add :password, :string

      timestamps()
    end

    create table(:twilio_numbers) do
      add :number, :string
    end
  end

  def down do
    drop table(:sms_users)
    drop table(:web_admins)
    drop table(:twilio_numbers)
  end
end
