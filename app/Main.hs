module Main where

import Metric
import qualified Time
import Money

time = Second 5
distance = Meter 10

-- mySpeed = speed time distance
mySpeed = speed distance time



mins = Time.fromMinutes 40
hrs = Time.fromHours 2

totalTime = Time.add hrs mins

usd = Currency 500 :: Currency Usd
eur = Currency 1000 :: Currency Eur
rate = Rate 1.12 :: Rate Eur Usd
--totalM = add usd eur 
totalMoney = usd `add` (convert rate eur)

main :: IO ()
main = do
    print $ totalTime
    print $ totalMoney
