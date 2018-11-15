Code.load_file("struct.exs", __DIR__)
ExUnit.start()
ExUnit.configure trace: true

defmodule StructTests do
  use ExUnit.Case
  alias Struct.{Basic, WithEnforceKeys}

  @tag :skip
  test "removing or adding a key from a struct is allowed after creation?" do
    struct = %Basic{}
    removed = Map.delete(struct, :key1)
    added = Map.put(struct, :new_key, "value")

    assert Map.has_key?(removed, :key1)
    refute Map.has_key?(removed, :key1)

    assert Map.has_key?(added, :new_key)
    refute Map.has_key?(added, :new_key)
  end

  @tag :skip
  test "cannot create a struct without the enforced key `:required`" do
    func = fn -> %WithEnforceKeys{required: 1} end

    assert Map.has_key?(func.(), :required)
  end

  @tag :skip
  test "dot notation works for structs and maps, square braces work for maps only" do
    basic = %Basic{}
    map = %{key1: 1, key2: 2}

    assert basic.key1 == 1
    assert_raise UndefinedFunctionError, fn -> basic[:key2] end
    assert map.key1 == 1
    assert map[:key2] == 2
  end
end
