## Functions
  + Infix functions -> `4 * 2` -> in the middle of two params. `*` is an **infix function**.
  + **Prefix functions** -> `succ 8` -> in front.
  + Most functions are prefix.
  + Haskell | C/C++/Java/Python
    :---: | :---:
    Seperated by spaces | Seperated by parentheses
    `succ 9` | `succ(9)`
    `bar (bar 3)` | `bar(bar(3))`
    Names must begin with lowercase | Can be named any way
  
  + Becuase of referential transparancy simple functions can yield more complex functions (example in [funcs.hs](https://github.com/rvailnaveed/haskell/blob/master/funcs.hs).
  + ' is valid in a function name. Often used to denote slightly different functions.