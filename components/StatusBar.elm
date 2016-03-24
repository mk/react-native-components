module StatusBar where
  hidden : Bool -> Property
hidden val =
  JsonProperty "hidden" (Json.Encode.bool val)

animated : Bool -> Property
animated val =
  JsonProperty "animated" (Json.Encode.bool val)

translucent : Bool -> Property
translucent val =
  JsonProperty "translucent" (Json.Encode.bool val)

networkActivityIndicatorVisible : Bool -> Property
networkActivityIndicatorVisible val =
  JsonProperty "networkActivityIndicatorVisible" (Json.Encode.bool val)
