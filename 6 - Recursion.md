# Recursion
[Chapter 5](http://learnyouahaskell.com/recursion)

+ Recursion is important to Haskell because unlike imperative languages, you do computations in Haskell by declaring what something _is_ instead of declaring _how_ you get it.
+ There are no for loops or while loops in haskell so often things are defined using recursion.

## Thinking Recursively
+ Edge case will be when recursive calls stop.
+ Edge cases are when recursion wouldn't make sense or the _identity_ of the operation being performed.
+ Eg: Often the edge case for a list is the empty list because the empty list is the **identity**.

See [recursion.hs](https://github.com/rvailnaveed/haskell/blob/master/code/recursion.hs) for examples. (Including QuickSort)