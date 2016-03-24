module ActivityIndicator (..) where


animating : Bool -> Property
animating val =
  JsonProperty "animating" (Json.Encode.bool val)


color : String -> Property
color val =
  JsonProperty "color" (Json.Encode.string val)


hidesWhenStopped : Bool -> Property
hidesWhenStopped val =
  JsonProperty "hidesWhenStopped" (Json.Encode.bool val)


type ActivityIndicatorSize
  = ActivityIndicatorSizeSmall
  | ActivityIndicatorSizeLarge


size : ActivityIndicatorSize -> Property
size val =
  let
    stringValue =
      case size of
        ActivityIndicatorSizeSmall ->
          "small"

        ActivityIndicatorSizeLarge ->
          "large"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "size" jsonValue


onLayout : Signal.Address a -> a -> Property
onLayout address msg =
  on "Layout" Json.Decode.value (\_ -> Signal.message address msg)
