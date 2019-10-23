module Time
( Time
, fromMinutes
, fromHours
, toMinutes
, add
) where

newtype Time = Time {toMinutes :: Float} deriving (Show)

fromMinutes :: Float -> Time
fromMinutes mins = Time mins

fromHours :: Float -> Time
fromHours hrs = Time (60 * hrs)

add :: Time -> Time -> Time
add (Time t1) (Time t2) = Time (t1 + t2)