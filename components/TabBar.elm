module TabBar where

translucent : Bool -> Property
translucent val =
  JsonProperty "translucent" (Json.Encode.bool val)
