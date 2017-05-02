type Elem = Int
data Tree = E | T Tree Elem Tree

member :: Elem -> Tree -> Bool
member _ E = False
member x t@(T a y b) = member' y x t

member' :: Elem -> Elem -> Tree -> Bool
member' z x E = z == x
member' z x (T a y b) =
  if x <= y
  then member' y x a
  else member' z x b
