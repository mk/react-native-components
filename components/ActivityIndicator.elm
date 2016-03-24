module ActivityIndicator where
  animating : Bool -> Property
animating val =
  JsonProperty "animating" (Json.Encode.bool val)
color : String -> Property
color val =
  JsonProperty "color" (Json.Encode.string val)
hidesWhenStopped : Bool -> Property
hidesWhenStopped val =
  JsonProperty "hidesWhenStopped" (Json.Encode.bool val)


