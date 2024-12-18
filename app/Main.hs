module Main (main) where

import Suggest (s)
import System.Random

main :: IO ()
main = do
  gen <- getStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen)
  gen' <- newStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen')
  s