# Types and Typeclasses
- [Types and Typeclasses](#types-and-typeclasses)
  - [**Overview**](#overview)
  - [**Function Types**](#function-types)
  - [**Common Types**](#common-types)
    - [Int](#int)
    - [Integer](#integer)
    - [Float](#float)
    - [Double](#double)
    - [Bool](#bool)
    - [Char](#char)
    - [Tuples](#tuples)
  - [**Type Variables**](#type-variables)
  - [**Typeclasses**](#typeclasses)
  - [**Some Basic Typeclasses**](#some-basic-typeclasses)
    - [Eq](#eq)
    - [Ord](#ord)
    - [Show](#show)
    - [Read](#read)
    - [Enum](#enum)
    - [Bounded](#bounded)
    - [Num](#num)
    - [Integral](#integral)
    - [Floating](#floating)

## **Overview**
+   Haskell posseses static type system.
+   Type of every expression known at compile time -> leading to safer code.
+   Better to catch errors at compile time instead of the program crashing later.
+   Everything in haskell has a type, so the compiler knows a lot about the programming efore compiling.
+   Type system of haskell is very important.
+   Use `:t` to find type.
+   Eg : `:t 'a'`
+   **NB: Types are written with first letters as capitals.**

## **Function Types**
+   Functions can also be given explicit type declaration.
+   Good practise.
+   `::` interpreted as _has type of_.

```
removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z'] ]
```
+ We declared a function called **removeNonUppercase** and told haskell that it maps from a string to a string.
+ We then wrote the function body for **removeNonUppercase**.
+ Type of a function with several parameters:

```
addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z 
```

+   Parameters seperated by `->` and last type is the return type.
+   There is no clear distiction between parameter types and return types.

**Functions are expressions too so you can also do `:t function`**

## **Common Types**

### Int
+   Whole numbers.
+   `Int` is **bounded**, which means that it has a max and min value.

### Integer
+ Not bounded.
+ Really really big numbers.

### Float
+ Real floating point.
+ Single precision.

### Double
+ Real floating point.
+ Double precision.

### Bool

### Char

### Tuples
+   Are types but dependant on length as well as type of components.
+   Essentially infinite number of tuple types.
+   Empty tuple `()` is a type with single value `()`.

## **Type Variables**
+   What's the type of the `head` function?

```
Prelude> :t head  
head :: [a] -> a  
```
+ Becuase it's not in capital case, it is a _type variable_. This means that `a` can be of any type.
+ Kind of like java generics, but in haskell this allows us to easily write very general functions.
+ Functions that have type variables are called **polymorphic functions** (Can be any type).
+   Type declaration of `head` states that it takes a list of any type and returns one element of that type. 

## **Typeclasses**
+ Interface that defines some behaviour.
+ If a type is a part of a typeclass, that means that it supports and implements the behaviour the typeclass describes.
+ Type signature of `==` ?
    +   ```
        Prelude> :t (==)  
        (==) :: (Eq a) => a -> a -> Bool
        ```

+ **New symbol `=>`**.
+ Everything before the `=>` is called a **class constraint**.
+ Type declarattion of `==` can be interpreted as: takes any two values that are of the same type and returns a `Bool`. The type of those two values must be a member of the **`Eq`** class.

## **Some Basic Typeclasses**

### Eq
+ Provides an interface for testing equality.
+ Any type where it makes to compare values for equality should be members of the `Eq` class.
+ All standard haskell types (excluding I/O) and functions are part of `Eq`.
+ The functions its members implement are `==` (is equal to) and `/=` (is not equal to).
+ If Eq class constraint for a type variable in a function then one of the above used somewhere in its definition.

### Ord
+ For types that have an ordering.

```
Prelude> :t (>)  
(>) :: (Ord a) => a -> a -> Bool 
```

+ Covers all compaaring functions (>, <, >=, <=).
+ `compare` function takes two `Ord` members of the same type and returns an **ordering**.
+ **Ordering** is a type that can be `GT`(greater than), `LT`(less than) or `EQ`(equal).
+ To be a member of `Ord`, a type must first be a member of `Eq`.

### Show
+ Members of `Show` can be presented as strings.
+ `show` function part of `Show`.
+ Takes a member whose type is a member of `Show` and returns as string

```
Prelude> show 3  
"3"  
Prelude> show 5.334  
"5.334"  
Prelude> show True  
"True"  
```

### Read
+ Opposite typeclass of `Show`.
+ `read` takes a string and returns a type that is a part of `Read`.

```
Prelude> read "True" || False  
True  
Prelude> read "8.2" + 3.8  
12.0  
Prelude> read "5" - 2  
3  
Prelude> read "[1,2,3,4]" ++ [3]  
[1,2,3,4,3]
```

+ Doing `read "4"` won't work. If we don't do anything with the result, GHCI can't infer the type. It knows we want some type out of the `Read` class but not which one.
+ We can use **type annotations** to explicitly say what the type of an expression should be.
+ Do this by adding `::` at the end and then specify a type.

```
Prelude> read "5" :: Int  
5  
Prelude> (read "5" :: Float) * 4  
20.0  
Prelude> read "[1,2,3,4]" :: [Int]  
[1,2,3,4]  
Prelude> read "(3, 'a')" :: (Int, Char)  
(3, 'a')  
```
+ Since Haskell is a statically typed language, it has to know all the types before the code is compiled (or in the case of GHCI, evaluated).

### Enum
+ Members are sequentially ordered types — they can be enumerated.
+ Can use its types in list ranges.
+ Have defined successors and predecessors. `succ` and `pred` can be used to find them.
+ Types in this class: (), Bool, Char, Ordering, Int, Integer, Float and Double.

### Bounded
+ Members have an upper and lower bound.

```
Prelude> minBound :: Int  
-2147483648  
Prelude> maxBound :: Char  
'\1114111'  
Prelude> maxBound :: Bool  
True  
```

+ All tuples are also part of Bounded if the components are also in it.

### Num
+ Numeric typeclass.
+ Members can act like numbers.

```
Prelude> :t 20
20 :: (Num t) => t
```

+ Whole numbers are **polymorphic constants**, they can act like any type that's a part of `Num`.

```
Prelude> 20 :: Int  
20  
Prelude> 20 :: Integer  
20  
Prelude> 20 :: Float  
20.0  
Prelude> 20 :: Double  
20.0  
```

+ Types in Num are in Show and Eq.
  
### Integral
+ Num = all numbers.
+ Integral = whole numbers **only**.
+ `Int` and `Integer` in this typeclass.

### Floating
+ Only floating point numbers (Float and Double).
+ Useful function [fromIntegral](Haskell.md/#Useful-CommandsFunctions)