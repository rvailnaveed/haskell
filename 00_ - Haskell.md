## Haskell
[Good timez.exe](https://www.youtube.com/watch?v=RqvCNb7fKsg)
[Reference Card](https://wiki.haskell.org/Reference_card)
  + Lazy. Only does something when forced.
  + Allows us to think of programs as a series of transformations of data.
  + Offers [referential transparency](https://stackoverflow.com/a/210871/11125533).
  + Statically typed. Can determine types using _type inference_.
  
## Useful Things
  + `--` denotes a comment.
  + `let`. Define name in [GHCI](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/ghci.html).
  + In ghci terminal: `:l script.hs` to load in functions from script.
  + Made changes?: `:r` or `:l script.hs` to refresh script in ghci.
  + `succ x` gets the successor of a thing that you can get a successor for.
  + `min x y`
  + `max x y`
  + `_` : used when don't care situation, in place of variable name we'll never use.
  + `:t` used to find types of variables and functions.
  + `fromIntegral` takes integral and turns into more general number.
    + Type declaration of `fromIntegral :: (Num b, Integral a) => a -> b`.
    + Eg: `(length [1,2,3,4]) + 3.2` won't work.
    + `fromIntegral (length [1,2,3,4]) + 3.2` will.
  + `takeWhile` takes a predicate and a list and then goes from the beginning of the list and returns its elements while the predicate holds true. Once an element is found for which the predicate doesn't hold, it stops.

## Arithmetic/Boolean Operations
  + **Always** use parentheses with negative numbers. `5 * -3` will not work -> `5 * (-3)` will.
  + Usual arithmetic syntax. True and False capitalised like Python.
  
## If statements
  + Expressions.
  + `else` part is mandatory.
  + Expressions and functions must always return something.
