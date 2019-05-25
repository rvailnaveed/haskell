# Lambdas
+ Anonymous functions.
+ Normally made for passing on to higher order functions.
+ Denoted by `\` and then adding parameters seperated by space and then `->` and function body.
+ Can pattern match in lambdas but with only one pattern. If it fails then a runtime error occurs.
+ Surrounded by parentheses.


```haskell
Prelude> zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]  
[153.0,61.5,31.0,15.75,6.6]  
```

```haskell
Prelude> map (\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]  
[3,8,9,8,7]  
```

```haskell
addThree :: (Num a) => a -> a -> a -> a  
addThree x y z = x + y + z  
```

```haskell
addThree :: (Num a) => a -> a -> a -> a  
addThree = \x -> \y -> \z -> x + y + z  
```

```haskell
flip' :: (a -> b -> c) -> b -> a -> c  
flip' f = \x y -> f y x  
```

