defmodule ValueTypes do
  def get_head_of_list(keyword_list) do
    # Enter Code
  end

  # use guard clauses to make the following functions match:
  # Ex. def func(arg) when is_<type>(arg) do
  #       "return this string"
  #     end

  def any_type(tuple) when is_tuple(tuple) do
    "Tuple!"
  end
  # you can match a map by using an explicit map in the function signature
  def any_type(%{}) do
    # Code
  end

  #def any_type(integer) do
    # Code
  #end

  #def any_type(float) do
    # Code
  #end

  #def any_type(atom) do
    # Code
  #end

  #def any_type(list) do
    # Code
  #end

  #def any_type(string) do
    # Code
  #end

end
