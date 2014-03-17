module Bob (responseFor) where

import Data.Char as C

responseFor :: String -> String
isQuestion :: String -> Bool
isYell :: String -> Bool
isWithout :: String -> Bool

responseFor str
	| isWithout str = "Fine. Be that way!"
	| isYell str = "Woah, chill out!"
	| isQuestion str = "Sure."
	| otherwise = "Whatever."

isQuestion str = last str == '?'

isYell str = any isAlpha str && all isUpper (filter isAlpha str)

isWithout str = all isSpace str
