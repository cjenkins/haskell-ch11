{-# LANGUAGE FlexibleInstances #-}

module LogicGoats where

class TooMany a where
  tooMany :: a -> Bool

instance TooMany (Int, String) where
  tooMany (n, s) = n > 42

instance TooMany (Int, Int) where
  tooMany (x, y) = x + y > 42

--3
instance (Num a, TooMany a) => TooMany (a, a) where
  tooMany (n, t) = tooMany t
