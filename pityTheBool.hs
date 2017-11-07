module PityTheBool where

data BigSmall =
  Big Bool
  | Small Bool
  deriving (Eq, Show)

--1 Big True | False + Small True | False = 4
--2 258, Fails, Fails
