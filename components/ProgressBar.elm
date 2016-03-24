module ProgressBar where

progress : Float -> Property
progress val =
  JsonProperty "progress" (Json.Encode.float val)

testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)
