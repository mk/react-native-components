module Switch where
  value :  -> Property
value val =
  JsonProperty "value" (Json.Encode. val)

disabled :  -> Property
disabled val =
  JsonProperty "disabled" (Json.Encode. val)
