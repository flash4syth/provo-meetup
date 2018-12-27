# Exercise 1

For the first exercise let's take a look at how pattern matching works.
In Elixir the equals sign `=` is called the match operator because it is
used to make sure that the things on both sides are equal to each other.
If they do not equal each other or cannot be made to equal each other, then
a match error `MatchError` will occur.  Follow along in the Elixir command
line tool by typing `iex` in your terminal or command line program.

```
iex> a = 1
1
iex> 1 = a
1
iex> 2 = a
** (MatchError) no match of right hand side value: 1
...
(more error output below this)
```

We can see that the first line makes `a` equal to 1--this is called binding
the variable.  So we are binding `a` to 1.  Once it has been bound, we can
switch the order of the number and the variable and it still returns the
same thing--the value that is being matched.  We can see that a 2 does
not match because it gave us the `MatchError`.  Try this also:

```
iex> 1 = 3
** (MatchError) no match of right hand side value: 3
...
iex(3)> 1 = 1
1
iex> a = 1
1
iex> a = 2
2
iex> a
2
```

In the last example, we set `a` equal to 2 by rebinding it to 2 instead of 1.
That is what happens automatically when the variable is on the left side
unless you use a special operator called the pin operator `^`.

```
iex> a = 3
3
iex> ^a = 4
** (MatchError) no match of right hand side value: 4
```

We get an error because 3 does not match 4 and the pin operator `^`
prevents rebinding `a` to 4.  You may have heard that Elixir is immutable
which means you are not able to change a value once it is set, but it looks a
lot like we are changing a value here.  The variable `a` seemed to change
when we used it on the left side without the pin operator `^`.  Let me
explain what is going on here with an example:

```
iex> a = 1
1
iex> # Define an anonymous function
iex> my_func = fn -> IO.puts "a is #{a}" end
#Function<20.127694169/0 in :erl_eval.expr/5>
iex> my_func.() # call the function
a is 1
:ok
iex> a = 2 # rebind a to 2
2
iex> my_func.() # a is now 2 right?
a is 1
:ok
```

When we defined the anonymous function and use the variable `a`
inside it `#{a}`, Elixir remembered our variable's value at that point
in our program--the point where we added the code for our anonymous
function, and it was not overwritten afterwards when we entered:

```
`a = 2`
```

In Elixir, when we rebind a variable to a new value, we are making a new
variable even though it has the same name as the old one. Any code using the
old variable will still see the old value as in the case of our code above.
This is a subtle but important difference from other languages.

If this is still confusing, I wouldn't worry too much, that's normal.
You can still write useful programs without understanding all the details.
As you gain experience and exercise patient curiosity, your ability to
understand how things work will increase.
