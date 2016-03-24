module Slider where
  value :  -> Property
value val =
  JsonProperty "value" (Json.Encode. val)

step :  -> Property
step val =
  JsonProperty "step" (Json.Encode. val)

minimumValue :  -> Property
minimumValue val =
  JsonProperty "minimumValue" (Json.Encode. val)

maximumValue :  -> Property
maximumValue val =
  JsonProperty "maximumValue" (Json.Encode. val)

minimumTrackTintColor :  -> Property
minimumTrackTintColor val =
  JsonProperty "minimumTrackTintColor" (Json.Encode. val)

maximumTrackTintColor :  -> Property
maximumTrackTintColor val =
  JsonProperty "maximumTrackTintColor" (Json.Encode. val)

disabled :  -> Property
disabled val =
  JsonProperty "disabled" (Json.Encode. val)
