# Notes
Learning functional programming and haskell via: [Learn you a haskell](http://learnyouahaskell.com/chapters)

## Haskell
  + Lazy. Only does something when forced.
  + Allows us to think of programs as a series of transformations of data.
  + Offers [referential transparency](https://stackoverflow.com/a/210871/11125533).
  + Statically typed. Can determine types using _type inference_.
  
## Arithmetic/Boolean Expressions
  + **Always** use parentheses with negative numbers. `5 * -3` will not work -> `5 * (-3)` will.
  + Usual arithmetic syntax. True and False capitalised like Python.
  
## If statements
  + Expressions.
  + `else` part is mandatory.
  + Expressions and functions must always return something.
  
## Functions
  + Infix functions -> `4 __*__ 2` -> in the middle of two params.
  + Prefix functions -> `succ 8` -> in front.
  + Haskell | C
    :-----: | :-----:
    Seperated by spaces | Seperated by parentheses
    succ 9 | succ(9)
    bar (bar 3) | bar(bar(3))
  
  + Becuase of referential transparancy simple functions -> Complex functions.
    
