# Exercise 1

This chapter uses something called anonymous functions which are functions
that have no name.  There isn't an explanation of how anonymous functions
work, so this exercise will teach you a little more.  As usual, run the
following in `iex`, Elixir's command line tool.

iex(1)> my_function = fn x ->
...(1)> IO.puts "x is: #{x}"
...(1)> end
#Function<6.127694169/1 in :erl_eval.expr/5>
iex(2)> my_function.(2)
x is: 2
:ok
iex(3)> my_function.(:atom)
x is: atom
:ok

In this code we created an anonymous function.  I know it looks like it
has a name because we typed `my_function = fn ...`, but that is just the
name of a variable we're using to refer to the function, not the name of the
function.  The function starts with fn, followed by the parameter name,
then the start of the function body `->`, the code of the function, and
finally the end which is just `end`.  We can have 0 or more parameters
like `fn a, b, c ->` (3 parameters) or `fn ->` (0 parameters) where the
parameters come between `fn` and `->`.

We also see that to use this anonymous function we give it some value
like a number or even an atom and the function prints a nice little
string with the value that we gave it.

The Enum module that this chapter discusses uses anonymous functions to
do something to every item in a list.  In fact, it uses named functions too.
Those are the ones that come after the dot like `Enum.map`.  In this case
`map` is a named function.  Let's try another function inside
the Enum module with our own anonymous function.

iex(4)> Enum.map([1,2,3], fn number -> number + 1 end) # add 1 to each number
[2, 3, 4]

We added 1 to each number of the list using an anonymous function that was
created or defined right inside the parentheses `()` of `Enum.map()`.  Let's
combine the two things we did above--using a variable name to refer to an
anonymous function, and pass that variable name to Enum.map() after the
comma, so it will be the second argument which must be a function.
(Note: The main reason functional languages are called functional is because
they use functions as arguments to other functions.)

iex(5)> add_two = fn number -> number + 2 end # create our anonymous function
#Function<6.127694169/1 in :erl_eval.expr/5>
iex(6)> Enum.map([1, 2, 3], add_two)
[3, 4, 5]

See how we used `add_two`, our anonymous function, inside Enum.map()?  If
adding two is something we are going to do a lot it is nice to not have to
type out the function every time.  We can instead use the variable or even
better a named function which we'll get to in future lessons.
