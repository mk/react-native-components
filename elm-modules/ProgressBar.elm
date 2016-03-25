module NativeUi.ProgressBar (progress, testID) where

import Json.Decode
import NativeUi exposing (Property, on)


progress : Float -> Property
progress val =
  JsonProperty "progress" (Json.Encode.float val)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)
