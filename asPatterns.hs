module AsPatterns where

import Data.Char

isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf [] _ = True
isSubseqOf _ [] = False
isSubseqOf sub@(subHead:subTail) seq@(seqHead:seqTail) =
  if subHead == seqHead then isSubseqOf subTail seqTail
                        else isSubseqOf sub seqTail

capitalizeWords :: String -> [(String, String)]
capitalizeWords s = map (\x@(xHead:xTail) -> (x, ((toUpper xHead):xTail))) $ words s

capitalizeWord :: String -> String
capitalizeWord s@(sHead:sTail) = ((toUpper sHead):sTail)

capitalizeParagraph :: String -> String
capitalizeParagraph s = capitalizeWord $ innerCap (words s) where
  innerCap [] = []
  innerCap ss@(sHead:[]) = sHead
  innerCap ss@(sHead:sNext:sTail) = if sHead !! (length sHead - 1) == '.'
                                    then sHead ++ " " ++ capitalizeWord sNext ++ " " ++ innerCap sTail
                                    else sHead ++ " " ++ sNext ++ " " ++ innerCap sTail
