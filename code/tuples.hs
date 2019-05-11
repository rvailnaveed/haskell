-- Problem using list comprehension and tuples

-- Problem statement: Which right triangle has sides <= 10 and perimeter of 24?

-- First try and generate all triangles with sides <= 10
triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
-- Lets use our knowledge of right angled triangles to generate some predicates
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
-- Adding perimeter constraint....
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
-- Answer should be [(6,8,10)]