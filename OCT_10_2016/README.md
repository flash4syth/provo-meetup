# Sum Square Difference

To do the following exercises, first become familiar with the documentation on
the Enum.reduce function (https://hexdocs.pm/elixir/Enum.html)

The sum of the squares of the first ten natural numbers is,

* 1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,

* (1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


# My Reducer

1. Use Enum.reduce/3 to make a string N characters long of a given character

* Hint: your accumulator can start as an empty string

2. Use Enum.reduce/2 to return the sum of all elements in a list of integers

3. Use Enum.reduce/3 to return a map of word counts with the word as key

* Hint: you can use a %{} as the accumulator, String.to_atom/1 to turn
  a word into an atom, and Map.update/4 to set initial or update values
  of keys in a map
