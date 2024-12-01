module Test where

import System.Random (Random (random), StdGen)

threeCoins :: StdGen -> (Bool, Bool, Bool)
threeCoins gen =
  let (firstCoin, newGen) = random gen
      (secondCoin, newGen') = random newGen
      (thirdCoin, newGen'') = random newGen'
   in (firstCoin, secondCoin, thirdCoin)