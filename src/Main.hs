module Main where

import Primes

-- main = putStrLn $ "The 101st prime is " ++ show (primes !! 100)
main = putStrLn $ show (xor True False)

fullName :: String
fullName = "Harry Potter"

double :: Int -> Int
double n = n * 2

-- Declaration of function can be done in multiple lines
xor :: Bool -> Bool -> Bool
xor True True = False
xor False False = True
xor x y = True

add :: Int -> Int -> Int
add x y = x + y

data Pair = Pair Int Int

myPair :: Pair
myPair = Pair 1 2
