module VigenereCiphere where

import Data.Char

rotateChar :: Char -> Int -> Char
rotateChar c i
  | c == ' ' = ' '
  | i == 0 = c
  | i > 0 && c == 'Z' = rotateChar 'A' (i - 1)
  | i > 0 && c == 'z' = rotateChar 'a' (i - 1)
  | i > 0 = rotateChar (succ c) (i - 1)
  | i < 0 && c == 'A' = rotateChar 'Z' (i - 1)
  | i < 0 && c == 'a' = rotateChar 'z' (i - 1)
  | i < 0 = rotateChar (pred c) (i - 1)

getRotationSteps :: String -> Int -> Int
getRotationSteps s i = ord (s !! (mod i (length s))) - ord 'A'

generateIndexChar :: String -> Int -> [(Char, Int)]
generateIndexChar s currentIndex
  | length s == 0 = []
  | (head s) == ' ' = [((head s), 0)] ++ generateIndexChar (tail s) currentIndex 
  | otherwise = [((head s), currentIndex)] ++ generateIndexChar (tail s) (currentIndex + 1)
  
vigenerefy :: String -> String -> String
vigenerefy message cipher = map (\x -> rotateChar (fst x) (getRotationSteps cipher (snd x))) $
                            generateIndexChar message 0


