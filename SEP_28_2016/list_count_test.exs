Code.load_file("list_count.exs", __DIR__)
ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule ListCountTest do
  use ExUnit.Case

  #@tag :pending
  test "returns 0 for an empty list" do
    count = ListCount.count_elms([])
    assert count == 0
  end

  @tag :pending
  test "returns value > 0 for non-empty list" do
    count = ListCount.count_elms([1,2,3])
    assert count == 3
  end

  @tag :pending
  test "counts list of strings" do
    count = ListCount.count_elms(["A","B","C"])
    assert count == 3
  end

end
