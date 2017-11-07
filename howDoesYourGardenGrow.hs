module HowDoesYourGardenGrow where

--data FlowerType = Gardenia
--  | Daisy
--  | Rose
--  | Lilac
--  deriving Show

type Gardner = String

data Garden =
  Gardenia Gardner
  | Daisy Gardner
  | Rose Gardner
  | Lilac Gardner
  deriving Show
