module DogTypes where

data PugType =
  PugData

data HuskyType =
  HuskyData

data DogueDeBordeaux doge =
  DogueDeBordeaux doge

data Doggies a =
  Husky a
  | Mastiff a
  deriving (Eq, Show)

--1 Type constructor (on left)
--2 * -> *
--3 *
--4 Num a => Doggies a
--5 Doggies Integer
--6 Doggies String
--7 Both
--8 DogueDeBordeaux a
--9 DogueDeBordeaux String
