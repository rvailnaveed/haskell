# Tuples
**[Chapter 2](http://learnyouahaskell.com/starting-out)**

## **Overview**
+ Used when you know exactly how many values you want to combine.
+ Type depends on how many values you want to combine and the types of the components.
+ Denoted with paretheses and seperated by commas.
+ A 2-tuple (pair) : (2, 3)
+ Unlike a list, a tuple can contain a combination of several types.

## **Pair operations**
+ `fst` takes a pair and returns first component
+ `snd` returns second component
+ Function | Result
  :---: | :---:
  `fst (8, 11)` | 8
  `snd (8, 11)` | 11

## **The ZIP**
+ `zip` takes two lists and zips them together into one list
+ Useful when you need to combine lists, or traverse two lists at the same time.
+ Longer lists will get cut off to match the shorter one.
+ Function | Result
  :---: | :---:
  `zip [1,2,3,4,5] [5,5,5,5,5]` | `[(1,5),(2,5),(3,5),(4,5),(5,5)]`
  `zip [1 .. 5] ["one", "two", "three", "four", "five"]` | `[(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]`
  `zip [1..] ["apple", "orange", "cherry", "mango"]` | `[(1,"apple"),(2,"orange"),(3,"cherry"),(4,"mango")]`

## Problem
+ Contained in [tuples.hs](https://github.com/rvailnaveed/haskell/blob/master/code/tuples.hs)
+ Demonstrates common pattern in functional programming....
+ ...Take a starting set and apply transformations to those solutions and filter them until you get the right ones.