{-# LANGUAGE OverloadedStrings #-}
module Maîtreya.Core
  ( initializeMaîtreya
  , MaîtreyaState(..)
  , AudioConfig(..)
  , runMaîtreya
  ) where

import Control.Monad.State
import Data.Text (Text)
import qualified Data.Text as T

-- | MAITREYA DAW Core State
data MaîtreyaState = MaîtreyaState
  { audioConfig :: AudioConfig
  , isRunning :: Bool
  , currentProject :: Maybe Text
  } deriving (Show, Eq)

-- | Audio Configuration following SIEGE principles
data AudioConfig = AudioConfig
  { sampleRate :: Int      -- Must be integer for SIEGE
  , bufferSize :: Int      -- Integer execution
  , channels :: Int        -- Integer precision
  , latencyMs :: Int       -- Integer latency target
  } deriving (Show, Eq)

-- | Initialize MAITREYA DAW with gentle revolution principles
initializeMaîtreya :: IO MaîtreyaState
initializeMaîtreya = do
  putStrLn "🎵 MAITREYA DAW - Haskell Core Initializing..."
  putStrLn "💙 b122m faeb gentle revolution"
  putStrLn "🔢 SIEGE: Software for Integer Execution of Garden Expressions"
  
  return MaîtreyaState
    { audioConfig = AudioConfig
        { sampleRate = 44100
        , bufferSize = 1024
        , channels = 2
        , latencyMs = 10
        }
    , isRunning = False
    , currentProject = Nothing
    }

-- | Run MAITREYA DAW with state monad
runMaîtreya :: State MaîtreyaState a -> MaîtreyaState -> IO (a, MaîtreyaState)
runMaîtreya action initialState = do
  let (result, finalState) = runState action initialState
  return (result, finalState)

-- | Start audio processing
startAudio :: State MaîtreyaState ()
startAudio = do
  state <- get
  put state { isRunning = True }

-- | Stop audio processing
stopAudio :: State MaîtreyaState ()
stopAudio = do
  state <- get
  put state { isRunning = False }

-- | Load project with gentle error handling
loadProject :: Text -> State MaîtreyaState (Either Text ())
loadProject projectName = do
  if T.null projectName
    then return (Left "Project name cannot be empty")
    else do
      state <- get
      put state { currentProject = Just projectName }
      return (Right ())
