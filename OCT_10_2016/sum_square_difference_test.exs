Code.load_file("sum_square_difference.exs", __DIR__)
Code.load_file("myreducer.exs", __DIR__)
#Code.load_file("sum_square_difference.exs", __DIR__)

ExUnit.start()
ExUnit.configure trace: true

defmodule Tests do
  use ExUnit.Case

  # Sum Square Difference Tests  I'm pretty sure I have the math right but if
  # it's not working and you think it should, then see if your code handles the example
  # the .md file gives correctly.  If it does, my math is wrong :/
  test "produces correct answer for (square of sums) - (sum of squares)" do
    assert SumSquareDifference.compute(1..100) === 25164150.0
  end

  @tag :skip
  test "produces correct answer for (square of sums) - (sum of squares) as integer" do
    assert SumSquareDifference.compute_as_integer(1..100) === 25164150
  end


  # Enum.reduce Tests
  @tag :skip
  test "given N and single character string, produces a string of that letter N long" do
    assert MyReducer.make_string(5, "A") == "AAAAA"
  end

  @tag :skip
  test "given a list of numbers, computes their sum" do
    assert MyReducer.sum([1,2,3]) == 6
  end

  @tag :skip
  test "given a word list, produces a map of word counts" do
    word_list = ~w/one two two three three three/
  assert MyReducer.word_count(word_list) == %{one: 1, two: 2, three: 3}
  end


end
