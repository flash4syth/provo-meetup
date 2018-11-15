# Play with the tests in struct_tests.exs to see how they answer these questions:

1. Can I add or remove keys from a struct with `Map.put/3`, `Map.delete/2` after it is created?
2. What effect does `@enforce_keys` have on a struct?
3. What happens when matching a plain map with a struct in a function signature?
4. What happens when matching a modified struct with it's original form in a function signature?
5. What happens when matching a map with the required `__struct__: Module` with `%Module{}`
