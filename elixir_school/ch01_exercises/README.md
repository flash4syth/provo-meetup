# Exercise 1
In mathematics the acronym PEMDAS is used to remind us the order of
operations--the order in which we should calculate a mathematical expression.
Parentheses, Exponents, Multiplication, Division, Addition, and
Subtraction is the order.  However, Subtraction and Addition are considered
at the same priority level and so are Multiplication and Division. So, if
these operations are next to each other like `2 * 2 ÷ 4` the answer should be
computed moving left to right.  2 times 2 equals 4, and 4 divided by 4 is 1.
If we work the problem the other direction: 2 divided by 4 is 1/2, and 1/2
times 2 is 2.  So we get different answers in this case.

Look at the expressions below which use the mathematical operators
that Elixir provides.  Try to guess what the answer will be with and without
the parentheses, then enter the expressions into the Elixir command line
tool `iex` to see what the result is.  Does Elixir follow the mathematical
order of operations?

# type the three letters `iex` to start interactive Elixir--the Elixir
# command line that allows you to type and run Elixir code.
```
1a) 5 - 2 - 1

1b) 5 - (2 - 1)

2a) 1 + 2 - 2 * 5 / 10

2b) 1 + (2 - 2) * (5 / 10)
```

# Exercise 2

In `iex` enter the expressions below.  Note that `#` is just the start of a
comment and you don't have to enter that nor the words that follow.
```
iex> names = ~w[John Mary Bob] # creates a list like ["John", "Mary", "Bob"]
iex> "Hello #{Enum.random(names)}" # picks a random name to say hello to
iex>  # press the up arrow to repeat the last thing you typed and try it again.
```
