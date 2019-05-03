# Types and Typeclasses

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
+ Functions that have type variables are called **polymorphic functions**.
+   Type declaration of `head` states that it takes a list of any type and returns one element of that type. 

## **Typeclasses**
+ Interface that defines some behaviour.
+ If a type is a part of a typeclass, that means that it supports and implements the behaviour the typeclass describes.