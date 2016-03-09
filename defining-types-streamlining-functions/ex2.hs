data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

data MaybeTree a = MaybeNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a)) deriving (Show)

