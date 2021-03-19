module Main where

import Primes
import Java

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

data Counter = Counter @eta.example.Counter
  deriving Class

foreign import java unsafe "@new" newCounter :: Java a Counter
foreign import java unsafe "@new" newCounterWith :: Int -> Java a Counter
foreign import java unsafe increment :: Java Counter ()
foreign import java unsafe get :: Java Counter Int
foreign import java unsafe set :: Int -> Java Counter ()
foreign import java unsafe "@static @field eta.example.Counter.COUNTER_MAX"
  cOUNTER_MAX :: Java a Int
foreign import java unsafe "@field publicCounter" getPublicCounter
  :: Java Counter Int
foreign import java unsafe "@field publicCounter" setPublicCounter
  :: Int -> Java Counter ()
foreign import java unsafe "@static @field eta.example.Counter.numCounters" getNumCounters
  :: Java a Int

-- TODO: I don't know how to make it work
--foreign import java unsafe "@static @field numCounters" setNumCounters
--  :: Int -> Java a ()

data X = X @[class-name]
  deriving Class