module ProgressView (..) where


type ProgressViewProgressViewStyle
  = ProgressViewProgressViewStyleDefault
  | ProgressViewProgressViewStyleBar


progressViewStyle : ProgressViewProgressViewStyle -> Property
progressViewStyle val =
  let
    stringValue =
      case progressViewStyle of
        ProgressViewProgressViewStyleDefault ->
          "default"

        ProgressViewProgressViewStyleBar ->
          "bar"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "progressViewStyle" jsonValue


progress : Float -> Property
progress val =
  JsonProperty "progress" (Json.Encode.float val)


progressTintColor : String -> Property
progressTintColor val =
  JsonProperty "progressTintColor" (Json.Encode.string val)


trackTintColor : String -> Property
trackTintColor val =
  JsonProperty "trackTintColor" (Json.Encode.string val)
