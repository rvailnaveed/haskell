# Lists
**[Chapter 2](http://learnyouahaskell.com/starting-out)**

## **Common List Operations**
Operator | Function | Example | Result
:---: | :---: | :---:| :---:
`++` | Puts 2 lists together | `[1, 2 , 3] ++ [4, 5, 6]` | `[1, 2, 3, 4, 5, 6]`
`:` | Cons. Prepends element to front | `'A':" SMALL CAT"` | `"A SMALL CAT"`
`:` | Cons. Prepends element to front | `5:[1,2,3,4,5]` | `[5,1,2,3,4,5]`
`!!` | Used to get element at an index. Must be within bounds | `"Arnold Schwarzenegger" !! 7` | `S`
`head` | First element of list | `head [1, 2 , 3]` | `1`
`tail` | Returns tail of list (Cuts off head) | `tail [1, 2, 3]` | `[2, 3]`
`last` | Last element of list | `last [1, 2, 3]` | `3`
`init` | Takes list and returns list minus last element | `init [1, 2, 3]` | `[1, 2]`
`length` | Returns length of list (number of elems) | `length  [1, 2, 3]` | `3`
`null` | Checks whether list is empty | `null []` | `True`
`reverse` | Reverses list | 
`take` | Takes x amount of elements from front of list and returns them | `take 1 [1, 2, 3]` | `[1]`
`drop` | Removes x amount of elements from front of list | `drop 2 [1, 2, 3]` | `[3]`
`maximum` | Finds max | `maximum [1, 2, 3]` | `3`
`minimum` | Finds min | `minimum [1, 2, 3]` | `1`
`sum` | Adds all numbers | `sum [1, 2, 3]` | `6`
`product` | Multiplies all numbers | `product [1, 2, 3]` | `6`
`elem` | Checks if x is in list | `` 4 `elem` [3 ,5 ,6] ``| `False`
`cycle` | Takes list and cycles into infinite list. Must specify limit when extracting or will go on forever... | `take 10 (cycle [1,2,3])` | `[1,2,3,1,2,3,1,2,3,1]`
`repeat` | Cycling but with one element | `take 10 (repeat 5)` | `[5,5,5,5,5,5,5,5,5,5]  `
`replicate` | Simpler version of repeat | `replicate 3 10` | `[10,10,10]`

  ![alt text](res/listmonster.png "List monster")

  _Image courtesy of [Learn you a haskell](http://learnyouahaskell.com/)_
    
## **Ranges**
+ Pretty cool
+ Can specify a step
+ Enumeration comprehension
+ Example : `[1..20]` is equivalent to `[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]`
+ Example : `['a'..'z']` is equivalent to `"abcdefghijklmnopqrstuvwxyz"`
+ Example (with step) : `[2, 4,..20]` is equivalent to `[2,4,6,8,10,12,14,16,18,20]`
+ Best not to use floats with ranges. Can lead to weird behaviour
+ See examples in [lists.hs](https://github.com/rvailnaveed/haskell/blob/master/code/lists.hs)

## **Infinite Lists Intro**
+ Not specifying an uperr limit leads to an infinite list
    + First 24 multiples of 13?
      + Naive : `[13,26..24*13]`
      + Better : `take 24 [13,26..]`
+ Becasue haskell is lazy, it will not evaluate the infinite list until you need it, it sees that you only need the first 24 elements so it obliges.
    + See examples in [lists.hs](https://github.com/rvailnaveed/haskell/blob/master/code/lists.hs)
  
## **List Comprehensions**
+ Much like set comprehensions
  +  List Comprehension | Result
       :---: | :---:
       `[x*2` <code>&#124;</code>`[x <- [1..10]]` | `[2,4,6,8,10,12,14,16,18,20]`
       `[x*2` <code>&#124;</code>`[x <- [1..10], x*2 >= 12]` | `[12,14,16,18,20]`
+ Weeding out lists using **predicates** is called **filtering**
+ Multiple predicates, and lists can be specified in comprehension
+ See examples in [lists.hs](https://github.com/rvailnaveed/haskell/blob/master/code/lists.hs)

## **Miscellaneous**
  + `[1,2,3]` is actually just syntactic sugar for `1:2:3:[]`, where `[]` is an empty list.
  + Equality operators (>, <, ==) can be used between lists. Elements compared in lexicographic order.
  + Lists within lists must still all be of the same type.
  + See examples in [lists.hs](https://github.com/rvailnaveed/haskell/blob/master/code/lists.hs)