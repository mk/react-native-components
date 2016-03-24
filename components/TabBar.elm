module TabBar where
  translucent :  -> Property
translucent val =
  JsonProperty "translucent" (Json.Encode. val)
