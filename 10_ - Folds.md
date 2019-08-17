# Folds

+ `x:xs` pattern is very common, so folds were made to encapsulate it.
+ Reduce the list to some single value.

## How It Works
+ Fold takes a binary function, a starting value(accumulator) and a list to fold.
+ Binary function itself takes two parameters; the accumulator and the first/last element and produces a new accumulator.
+ Then the binary function is called again with the new accumulator and the noew new first/last element and so on.
+ Finally, only the accumulator remains, which is what the list has been reduced to.

![Right Fold](https://wiki.haskell.org/wikiupload/3/3e/Right-fold-transformation.png "Right Fold") ![Left Fold](https://wiki.haskell.org/wikiupload/5/5a/Left-fold-transformation.png "Right Fold")


