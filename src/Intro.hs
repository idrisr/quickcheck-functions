{-# LANGUAGE ScopedTypeVariables #-}

module Intro where

import Test.QuickCheck.Poly
import Text.Show.Functions()

prop_MapFilter :: (A -> A) -> (A -> Bool) -> [A] -> Bool
prop_MapFilter f p (xs :: [A]) = map f (filter p xs) == filter p (map f xs)
