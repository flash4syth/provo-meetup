Code.load_file("list_concat.exs", __DIR__)

ExUnit.start()
ExUnit.configure trace: true

defmodule ListConcatTest do
  use ExUnit.Case

  #@tag :skip
  test "outputs empty list for input of two empty lists" do

    assert ListConcat.concat_lists([],[]) == []
  end

  @tag :skip
  test "output list is the length of the two input lists" do
    list_a = [1,2]
    list_b = [3,4,5]

    length_a = length(list_a)
    length_b = length(list_b)

    output_list = ListConcat.concat_lists(list_a, list_b)

    assert length(output_list) == length_a + length_b
  end

  @tag :skip
  test "the first two elements of the list are 1,4 for [1,2,3] [4,5,6]" do
    list_a = [1,2,3]
    list_b = [4,5,6]

    output_list = ListConcat.weave_lists(list_a, list_b)
    assert [ 1, 4 | _list_tail ] = output_list
  end
end
