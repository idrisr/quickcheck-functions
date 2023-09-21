module Main (main) where

import Test.Tasty
import Test.Tasty.QuickCheck
import Intro

tests :: TestTree
tests = testGroup "" [
    testProperty "" prop_MapFilter
    ]

main :: IO ()
main = defaultMain tests
