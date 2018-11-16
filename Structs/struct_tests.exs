Code.load_file("struct.exs", __DIR__)
ExUnit.start()
ExUnit.configure trace: true

defmodule StructTests do
  use ExUnit.Case
  alias Struct.{Basic, WithEnforceKeys}

  """
  The Question numbers correspond to the questions in the README.md file
  """

  # Question 1
  @tag :skip
  test "removing or adding a key from a struct is allowed after creation?" do
    struct = %Basic{}
    removed = Map.delete(struct, :key1)
    added = Map.put(struct, :new_key, "value")

    # one of each of the assert/refute pairs below is invalid
    # comment out each invalid one to make the test pass
    assert Map.has_key?(removed, :key1)
    refute Map.has_key?(removed, :key1)

    # only one of these can be true
    assert Map.has_key?(added, :new_key)
    refute Map.has_key?(added, :new_key)
  end

  # Question 2
  @tag :skip
  test "cannot create a struct without the enforced key `:required`" do
    func = fn -> %WithEnforceKeys{required: 1} end

    assert Map.has_key?(func.(), :required)
  end

  # Question 3
  @tag :skip
  test "to retrieve values, dot notation works for structs and maps, square braces work for maps only" do
    basic = %Basic{}
    map = %{key1: 1, key2: 2}

    assert basic.key1 == 1
    assert_raise UndefinedFunctionError, fn -> basic[:key2] end
    assert map.key1 == 1
    assert map[:key2] == 2
  end

  # Question 4
  @tag :skip
  test "a plain map does not match a struct, but a struct does" do
    map = %{key1: 1, key2: 2}
    struct = %Basic{key1: 3, key2: 4}

    assert_raise FunctionClauseError, fn -> Basic.check_match(map) end
    assert Basic.check_match(struct) == "Matches Struct!"
  end

  # Question 5
  @tag :skip
  test "modified struct matches, despite missing keys" do
    modified_struct = %Basic{} |> Map.delete(:key1)

    refute Map.has_key?(modified_struct, :key1)
    assert Basic.check_match(modified_struct) == "Matches Struct!"
  end

  # Question 6
  @tag :skip
  test "a map can be disguised as a struct" do
    pseudo_struct = %{__struct__: Basic, made_up_key: 1}

    assert Basic.check_match(pseudo_struct) == "Matches Struct!"
  end
end
