## Haskell
  + Lazy. Only does something when forced.
  + Allows us to think of programs as a series of transformations of data.
  + Offers [referential transparency](https://stackoverflow.com/a/210871/11125533).
  + Statically typed. Can determine types using _type inference_.
  
## Keywords/Shortcuts/Operators
  + `let`. Define name in [GHCI](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/ghci.html).
  + In ghci terminal: `:l script.hs` to load in functions from script.
  + Made changes?: `:r` or `:l script.hs` to refresh script in ghci.
  + `succ x` gets the successor of a thing that you can get a successor for.
  + `min x y`
  + `max x y`
  + `_` : used when don't care situation, in place of variable name we'll never use.
  
## Arithmetic/Boolean Operations
  + **Always** use parentheses with negative numbers. `5 * -3` will not work -> `5 * (-3)` will.
  + Usual arithmetic syntax. True and False capitalised like Python.
  
## If statements
  + Expressions.
  + `else` part is mandatory.
  + Expressions and functions must always return something.