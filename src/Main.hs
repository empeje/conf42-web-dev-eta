module Main where

import Primes
import Java
import Servant
import Servant.Server
import Data.Aeson
import Network.Wai.Servlet.Handler.Jetty

type API = "fibonacci" :> Capture "n" Int :> Get '[JSON] Value

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

api :: Proxy API
api = Proxy

server :: Application
server = serve api fibHandler
  where fibHandler n
          | n >= 0
          = return $ object ["n" .= n, "fib" .= fib n]
          | otherwise = throwError $ err412 { errBody = "Precondition Failed: n >= 0" }

main :: IO ()
main = run 9000 server

-- main = putStrLn $ "The 101st prime is " ++ show (primes !! 100)
-- main = putStrLn $ show (xor True False)

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