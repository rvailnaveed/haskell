# Syntax in Functions
**[Chapter 4](http://learnyouahaskell.com/syntax-in-functions)**

## **Pattern Matching**
+ **Not Regular Expressions!**
+ Consists of specifying patterns to which some data should conform to and then checking to see if it does and deconstructing the data according to those patterns.
+ When defining functions, you can define separate function bodies for different patterns.

```
lucky :: (Integral a) => a -> String  -- *function type declaration*
lucky 7 = "LUCKY NUMBER SEVEN!"       
lucky x = "Sorry, you're out of luck, pal!" -- *any other number*
```

+ Patterns are checked from top to bottom.
+ If first pattern doesn't work, it falls through to the next one etc.
+ `x` matches anything and binds to it.
+ Cleaner and clearer than large `if/else` trees.
+ Must make sure that there is a catch-all pattern at the end so program doesn't crash on unexpected input.

See [patterns.hs](https://github.com/rvailnaveed/haskell/blob/master/pattens.hs) for extended examples of pattern matching.

## **As Patterns**
+ Handy way of breaking something up according to a pattern and binding it to names whilst still keeping a reference to the whole thing. 
+ You do that by putting a name and an `@` in front of a pattern. For instance, the pattern `xs@(x:y:ys)`

```
capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
```

## **Guards**
+ Denoted by vertical bar (pipe) `|`.
+ Whereas patterns are a way of making sure a value conforms to some form and deconstructing it, guards are a way of testing whether some property of a value (or several of them) are true or false.

BMI berater using guards:
```
bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"  
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise                 = "You're a whale, congratulations!"
```

+ Guards indicated by pipes that follow a function name and parameters.
+ Basically boolean expressions.
+ If they evaluate to true, that expression (function body) is executed.
+ `otherwise` acts as catch all. Executes if nothing else did.
+ If all the guards of a function evaluate to `False` (and we haven't provided an otherwise catch-all guard), evaluation falls through to the next **pattern**. That's how patterns and guards play nicely together. 
+ If no suitable guards or patterns are found, an error is thrown.

## **where**
+ Commonly used to avoid repetition.
+ Calculate once, bind to a name and then use that name.

```
bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "You're underweight, you emo, you!"  
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
    | otherwise     = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0  
```

+ Put `where` after guards and then specify several names or functions.
+ Visible across guards.
+ The names we define in the where section of a function are only visible to that function, so we don't have to worry about them polluting the namespace of other functions.
+ Important to keep them in one column or Haskell gets confused. :cry:
+ Can also be used to pattern match

```
where bmi = weight / height ^ 2  
      (skinny, normal, fat) = (18.5, 25.0, 30.0)
```

+ Can also define functions in `where`.

## **let**
+ Of the form: `let <bindings> in <expression>`

```
Prelude> (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)  
(6000000,"Hey there!")
```
+ Very local to scope, not visible across guards.

## **Case expressions**
```
case expression of pattern -> result  
                   pattern -> result  
                   ...  
```