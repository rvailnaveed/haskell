# Maps and Filters

## Map
+   `map` takes a function and a list and applied that function to every element in the list, producing a new list.

```haskell
map :: (a -> b) -> [a] -> [b]  
map _ [] = []  
map f (x:xs) = f x : map f xs  
```

## Filter
+   `filter` is a function that takes a predicate and a list and then returns the list of elements that satisfy the predicate.

```haskell
filter :: (a -> Bool) -> [a] -> [a]  
filter _ [] = []  
filter p (x:xs)   
    | p x       = x : filter p xs  
    | otherwise = filter p xs  
```

See [mapsFilters.hs](https://github.com/rvailnaveed/haskell/blob/master/code/mapsFilters.hs) for examples.
