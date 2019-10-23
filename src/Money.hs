module Money
( Currency(..)
, Rate(..)
, Usd
, Eur
, Jpy
, add
, convert
) where

newtype Currency a = Currency Float
newtype Rate from to = Rate Float

{--
data Usd = Usd deriving (Show)
data Eur = Eur deriving (Show)
data Jpy = Jpy deriving (Show)
--}
{--}
data Usd = Usd
data Eur = Eur
data Jpy = Jpy

instance Show Usd where
    show _ = "$"

instance Show Eur where
    show _ = "€"
    
instance Show Jpy where
    show _ = "¥"
        
instance (Show a) => Show (Currency a) where
    show crcy@(Currency c) = show (c/100.0) ++ (show (getCurrency crcy))

getCurrency :: Currency a -> a
getCurrency _ = undefined
--}

class (Show a) => IsCoin a
instance IsCoin Usd
instance IsCoin Eur
instance IsCoin Jpy

add :: (IsCoin a) => Currency a -> Currency a -> Currency a
add (Currency c1) (Currency c2) = Currency (c1 + c2)

convert :: (IsCoin from, IsCoin to) => Rate from to -> Currency from -> Currency to
convert (Rate r) (Currency c) = Currency (r * c)