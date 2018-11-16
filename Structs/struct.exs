defmodule Struct.Basic do
  defstruct key1: 1, key2: 2 # special syntax for keyword list = [{:key1, 1}, {:key2, 2}]

  # Implement check_match/1 function
  def check_match() do
    # Code needed
  end
end

defmodule Struct.WithEnforceKeys do
  @enforce_keys [:required]
  defstruct [:required, :not_required] # list of keys are set to `nil`
end
