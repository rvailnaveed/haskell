# Higher Order Functions
+   Haskell functions can take functions as parameters and return functions as return values.
+   A function that does either of those things is called a _**Higher Order Function**_.
+ Pinnacle of programming in Haskell.

## Curried Functions
+   Every function in Haskell officially only takes one parameter.
+   Every function in Haskell is curried.
+   All functions that accept (aka look like they accept) several parameters are known as _curried functions_.
+   Eg : Doing  `max 4 5`
    +   First creates a function that takes a parameter and returns either 4 or that parameter, depending on which is bigger. 
    +   Then, 5 is applied to that function...
    +   ...and that function produces our desired result.

+   Putting a space between two things is simply **function apllication**. Acts as an operator and it has the highest precedence.
+   Type of `max`

```haskell
max :: (Ord a) => a -> a -> a
```

+   Could also be written as:

```haskell
max :: (Ord a) => a -> (a -> a)
```

+ `max` takes an `a` and returns a function that takes an `a` and returns an `a`.
+ This is why the parameters of functions are all seperated with arrows.

### Partial Applications
+   If a function is called with too few parameters, we get back a **partially applied function**.
+   Meaning a fnction that takes as many parameters as we left out.
+   Using partial application (calling functions with too few parameters) is a neat way to create functions on the fly so we can pass them to another function or to seed them with some data.

```haskell
multThree :: (Num a) => a -> a -> a -> a  
multThree x y z = x * y * z  
```
+    So our function takes an a and returns a function of type `(Num a) => a -> (a -> a)`. Similarly, this function takes an a and returns a function of type `(Num a) => a -> a`. And this function, finally, just takes an `a` and returns an `a`.

```haskell
Prelude> let multTwoWithNine = multThree 9  
Prelude> multTwoWithNine 2 3  
54  
Prelude> let multWithEighteen = multTwoWithNine 2  
Prelude> multWithEighteen 10  
180 
```

See [Higher Order Functions](http://learnyouahaskell.com/higher-order-functions) for extensive examples and theory.
