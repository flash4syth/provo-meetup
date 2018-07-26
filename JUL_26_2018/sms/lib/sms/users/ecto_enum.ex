defmodule Sms.Users.EctoEnum do
  import EctoEnum
  defenum StatusEnum, :status, [:registered, :stop, :request_pending]
end
