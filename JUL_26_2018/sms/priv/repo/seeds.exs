# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Sms.Repo.insert!(%Sms.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Sms.Repo
alias Sms.Users.SmsUser

[
  %SmsUser{number: "555-123-4567", status: :registered},
  %SmsUser{number: "555-123-4567", status: :registered},
  %SmsUser{number: "555-123-4567", status: :registered},
  %SmsUser{number: "555-123-4567", status: :registered, is_admin: true},
  %SmsUser{number: "555-123-4567", status: :stop},
  %SmsUser{number: "555-123-4567", status: :stop},
  %SmsUser{number: "555-123-4567", status: :request_pending},
  %SmsUser{number: "555-123-4567", status: :request_pending},
]
|> Enum.each(fn(sms_user)-> Repo.insert!(sms_user) end)
