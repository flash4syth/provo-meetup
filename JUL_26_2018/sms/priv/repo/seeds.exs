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
Faker.start()

alias Sms.Repo
alias Sms.Users.SmsUser
alias Faker.Phone.EnUs

[
  %SmsUser{number: EnUs.phone(), status: :registered},
  %SmsUser{number: EnUs.phone(), status: :registered},
  %SmsUser{number: EnUs.phone(), status: :registered},
  %SmsUser{number: EnUs.phone(), status: :registered, is_admin: true},
  %SmsUser{number: EnUs.phone(), status: :stop},
  %SmsUser{number: EnUs.phone(), status: :stop},
  %SmsUser{number: EnUs.phone(), status: :request_pending},
  %SmsUser{number: EnUs.phone(), status: :request_pending},
]
|> Enum.each(fn(sms_user)-> Repo.insert!(sms_user) end)
