module Picker where
  enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)

prompt : String -> Property
prompt val =
  JsonProperty "prompt" (Json.Encode.string val)

testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)
