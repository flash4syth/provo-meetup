defmodule ValueTypes do
  @doc """
  You can use the built in function called `hd` to get the head of a List
  and `tl` if you want the tail of a list.
  """
  def get_head_of_keyword_list(keyword_list) do
    # Enter Code
  end

  @doc """
  Use guard clauses to make the following functions match:
  Ex. def func(arg) when is_<type>(arg) do
       "return this string"
     end
  This first one is done for you.
  """
  def what_type?(tuple) when is_tuple(tuple) do
    "Tuple!"
  end

  @doc """
  You can match a map of any size (including empty) by using an empty map in
  the function signature (e.g. `%{}`) or use `when is_map(map)` as above.
  """
  def what_type?(map) do
    # Your code
  end

  def what_type?(integer) do
    # Your code
  end

  def what_type?(float) do
    # Your code
  end

  def what_type?(atom) do
    # Your code
  end

  def what_type?(list) do
    # Your code
  end

  def what_type?(string) do
    # Your code
  end
end
