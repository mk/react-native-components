module Switch where
  value : Bool -> Property
value val =
  JsonProperty "value" (Json.Encode.bool val)
disabled : Bool -> Property
disabled val =
  JsonProperty "disabled" (Json.Encode.bool val)




