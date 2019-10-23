module Metric
( Meter(..)
, Second(..)
, MetersPerSecond(..)
, speed
) where

newtype Meter = Meter Float deriving (Show)
newtype Second = Second Float deriving (Show)
newtype MetersPerSecond = MetersPerSecond Float deriving (Show)

speed :: Meter -> Second -> MetersPerSecond
speed (Meter m) (Second s) = MetersPerSecond (m / s)

