# Functions
**[Chapter 2](http://learnyouahaskell.com/starting-out)**

  + Infix functions -> `4 * 2` -> in the middle of two params. `*` is an **infix function**.
  + **Prefix functions** -> `succ 8` -> in front.
  + Most functions are prefix.
  + If a function is comprised only of special characters, it's considered an infix function by default. If we want to examine its type, pass it to another function or call it as a prefix function, we have to surround it in parentheses. Eg: `:t (==)`
  + Haskell | C/C++/Java/Python
    :---: | :---:
    Seperated by spaces | Seperated by parentheses
    `succ 9` | `succ(9)`
    `bar (bar 3)` | `bar(bar(3))`
    Names must begin with lowercase | Can be named any way
  
  + Becuase of referential transparancy simple functions can yield more complex functions (example in [funcs.hs](https://github.com/rvailnaveed/haskell/blob/master/code/funcs.hs).
  + ' is valid in a function name. Often used to denote slightly different functions.