module Vehicles where

data Price =
  Price Integer deriving (Eq, Show)

data Manufacturer =
  Mini
  | Mazda
  | Tata
  deriving (Eq, Show)

data Airline =
  PapuAir
  | CatapultsR'Us
  | TakeYourChangesUnited
  deriving (Eq, Show)

data Size =
  Small
  | Medium
  | Large
  deriving (Eq, Show)

data Vehicle = Car Manufacturer Price
  | Plane Size Airline
  deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane Small PapuAir

--1 Vehicle

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

isPlane :: Vehicle -> Bool
isPlane (Plane _ _) = True
isPlane _ = False

areCars :: [Vehicle] -> [Bool]
areCars vs = map isCar vs

getManu :: Vehicle -> Manufacturer
getManu (Car manu _) = manu

--4 Exception for non-exhaustive pattern
