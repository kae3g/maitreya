{-# LANGUAGE FlexibleInstances #-}
module Maîtreya.SIEGE.Expressions
  ( SIEGEExpression(..)
  , evaluateExpression
  , createFrequencyExpression
  , createAmplitudeExpression
  , createTimingExpression
  , integerExecution
  ) where

import Data.Ratio
import Control.Monad.State

-- | SIEGE: Software for Integer Execution of Garden Expressions
-- Mathematical expressions for infrastructure growth, security evolution, and cost optimization

data SIEGEExpression
  = Frequency Double     -- Audio frequency as rational number
  | Amplitude Double     -- Audio amplitude as rational number  
  | Timing Int           -- Timing in integer samples
  | Addition SIEGEExpression SIEGEExpression
  | Multiplication SIEGEExpression SIEGEExpression
  | GoldenRatio          -- φ = (1 + √5) / 2 ≈ 1.618
  deriving (Show, Eq)

-- | Evaluate SIEGE expression with integer precision
evaluateExpression :: SIEGEExpression -> Double
evaluateExpression expr = case expr of
  Frequency f -> f
  Amplitude a -> a
  Timing t -> fromIntegral t
  Addition e1 e2 -> evaluateExpression e1 + evaluateExpression e2
  Multiplication e1 e2 -> evaluateExpression e1 * evaluateExpression e2
  GoldenRatio -> (1.0 + sqrt 5.0) / 2.0

-- | Create frequency expression following golden ratio principles
createFrequencyExpression :: Int -> SIEGEExpression
createFrequencyExpression baseFreq =
  Multiplication (Frequency (fromIntegral baseFreq)) GoldenRatio

-- | Create amplitude expression with gentle scaling
createAmplitudeExpression :: Double -> SIEGEExpression
createAmplitudeExpression rawAmplitude =
  Multiplication (Amplitude rawAmplitude) (Amplitude 0.8) -- Gentle reduction

-- | Create timing expression with integer precision
createTimingExpression :: Int -> SIEGEExpression
createTimingExpression samples = Timing samples

-- | Execute SIEGE expression with integer precision
-- Converts floating-point results to integers for deterministic computation
integerExecution :: SIEGEExpression -> Int
integerExecution expr =
  let result = evaluateExpression expr
      precision = 1000000 :: Int  -- 6 decimal places precision
  in round (result * fromIntegral precision)

-- | Generate harmonic series using SIEGE expressions
generateHarmonicSeries :: Int -> Int -> [SIEGEExpression]
generateHarmonicSeries fundamentalFreq numHarmonics =
  map (\n -> createFrequencyExpression (fundamentalFreq * n)) [1..numHarmonics]

-- | Create b122m faeb gentle scaling function
gentleScale :: Double -> Double -> Double
gentleScale input maxValue =
  let scaled = input / maxValue
      goldenRatio = (1.0 + sqrt 5.0) / 2.0
  in scaled * goldenRatio * 0.618 -- Gentle reduction by golden ratio inverse
