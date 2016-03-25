import Data.List

lenlist :: [a] -> Int
lenlist [] = 0
lenlist (x:xs) = lenlist(xs) + 1

mean :: [Float] -> Float
mean x = sum(x) / fromIntegral(lenlist(x))

toPalindrome :: [Char] -> [Char]
toPalindrome x = x ++ reverse(x)

isPalindrome :: [Char] -> Bool
isPalindrome x = (x == reverse x)

listlencomparator :: [x]->[x]->Ordering
listlencomparator a b = compare al bl 
			where al = length a 
			      bl = length b

sortLists xs = sortBy listlencomparator xs

intersperse :: a->[[a]]->[a]

intersperse x ys =  intersperseIter x ys []

intersperseIter x [] result = result
intersperseIter x ys [] = intersperseIter x (tail ys) (head ys)
intersperseIter x ys result = intersperseIter x (tail ys) (result ++ [x] ++ head ys)

data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

treeDepth Empty  = 0
treeDepth (Node x y z) = 1 + max (treeDepth y) (treeDepth z)

data PointInfo = Point Int Int deriving (Show, Eq)
data LineInfo = Line Point Point deriving (Show, Eq) 
data Direction = Left | Straight | Right deriving (Show, Eq, Ord)

calculateTurn :: LineInfo->LineInfo->Direction
calculateTurn a b = angle == 0 || angle == 180
                      

