module Switch (..) where


value : Bool -> Property
value val =
  JsonProperty "value" (Json.Encode.bool val)


disabled : Bool -> Property
disabled val =
  JsonProperty "disabled" (Json.Encode.bool val)


onValueChange : Signal.Address a -> (String -> a) -> Property
onValueChange address stringToAction =
  on "ValueChange" Json.Decode.string (\value -> Signal.message address (stringToAction value))
