Code.load_file("value_types.exs", __DIR__)

ExUnit.start()
ExUnit.configure(trace: true)

defmodule ValueTypesTest do
  use ExUnit.Case

  # @tag :skip
  test "The head of a keyword list is a tuple" do
    expected = {:a, 1}
    actual = ValueTypes.get_head_of_keyword_list(a: 1, b: 2, c: 3)
    assert actual == expected
  end

  @tag :skip
  test "Returns `Tuple!` for tuple value type" do
    assert ValueTypes.what_type?({1, 2}) == "Tuple!"
  end

  @tag :skip
  test "Returns `Map!` for tuple value type" do
    assert ValueTypes.what_type?(%{1 => 2}) == "Map!"
  end

  @tag :skip
  test "Returns `Integer!` for integer value type" do
    assert ValueTypes.what_type?(1) == "Integer!"
  end

  @tag :skip
  test "Returns `Float!` for float value type" do
    assert ValueTypes.what_type?(1.2) == "Float!"
  end

  @tag :skip
  test "Returns `Atom!` for atom value type" do
    assert ValueTypes.what_type?(:atom) == "Atom!"
  end

  @tag :skip
  test "Returns `List!` for list value type" do
    assert ValueTypes.what_type?([1, 2]) == "List!"
  end

  @tag :skip
  test "Returns `String!` for binary (string) value type" do
    assert ValueTypes.what_type?("string") == "String!"
  end
end
