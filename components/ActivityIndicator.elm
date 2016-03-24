module ActivityIndicator where
  animating :  -> Property
animating val =
  JsonProperty "animating" (Json.Encode. val)

color :  -> Property
color val =
  JsonProperty "color" (Json.Encode. val)

hidesWhenStopped :  -> Property
hidesWhenStopped val =
  JsonProperty "hidesWhenStopped" (Json.Encode. val)

type ActivityIndicatorSize
  = ActivityIndicatorSmall
| ActivityIndicatorLarge

size : ActivityIndicatorSize -> Property
size val =
  let
    stringValue = case size of
      ActivityIndicatorSizeSmall -> "small"
ActivityIndicatorSizeLarge -> "large"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "size" jsonValue
