# Exercise 1

Lists are very useful in functional programming languages like Elixir. A list
can be broken up into two parts--the first element on the left which is called
the `head` and the rest of the items in the list which is grouped together in
a list called the `tail`.  Try this in the `iex` command line tool. Remember
that you don't have to type `#` with the comments that follow--those are
just comments to guide you.

```
iex(1)> [ head | tail ] = [1, 2, 3, 4]
[1, 2, 3, 4]
iex(2)> head # head is 1, the first item in the list
1
iex(3)> tail # tail contains the list of the other numbers
[2, 3, 4]
iex(4)> [ first, second, third | rest_of_the_list ] = [1, 2, 3, 4, 5]
[1, 2, 3, 4, 5]
iex(5)> first
1
iex(6)> second
2
iex(7)> third
3
iex(8)> rest_of_the_list
[4, 5]
iex(9)> [ head | tail ] = [6]  # Only one thing in this list
[6]
iex(10)> head
6
iex(11)> tail # What is the tail of a one-item list?
[]
```

# Exercise 2

Let's take a look at maps, another collection type.  Maps are wonderful
because they can hold thousands of items and allow a programmer to access
any item in the map really fast, no matter where it is located in the map.
Map items are accessed with a key.  Try this in `iex`:

ex(1)> my_map = %{:a => 1, "b" => 2}
%{:a => 1, "b" => 2}
iex(2)> my_map[:a]
1
iex(3)> my_map["b"]
2
iex(4)> my_map = %{ my_map | "b" => 3 } # Save the new version of my_map in my_map
%{:a => 1, "b" => 3}

If all the keys in a map are atoms like :new_atom, :another_atom, then maps
can be written like this with the `:` on the right side--special syntax for
atoms that you'll see in a couple other places.

iex(5)> map_with_atom_keys = %{a: 1, b: 2}
%{a: 1, b: 2}
iex(6)> map_with_atom_keys[:a] # note that `:` is on the left as usual
1
iex(7)> map_with_atom_keys.a # we can use this way to get the same as above
1

That last example `map_with_atom_keys.a` only works when all of the keys
of the map are atoms--they can't be strings or numbers ("string", 1, etc.)
