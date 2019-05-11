-- ++ concatenates two lists together (y to x)
addTwo x y = x ++ y

-- :, the cons operator. Prepends x to front of list y
cons x y = x:y

-- !! gets elem at index
index x y = x !! y

-- tail operation
getTail x = tail x 

getLength x = length x

--drop y amount from list x
dropSome x y = drop y x

-- x amount of multiples of 13
multiplesof13 x = take x [13, 26..]

-- using list comprehension to generate even numbers
evens = [x*2 | x <- [1..10]]