module ProgressView where
  progress : Float -> Property
progress val =
  JsonProperty "progress" (Json.Encode.float val)

progressTintColor : String -> Property
progressTintColor val =
  JsonProperty "progressTintColor" (Json.Encode.string val)

trackTintColor : String -> Property
trackTintColor val =
  JsonProperty "trackTintColor" (Json.Encode.string val)
