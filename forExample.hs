module ForExample where

data Example = MakeExample Int deriving Show

--1 Example, Error not a data constructor
--2 Works, Yes
--3 MakeExample :: Int -> Example
