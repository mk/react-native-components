module ProgressView where
  type ProgressViewProgressViewStyle
  = ProgressViewDefault
| ProgressViewBar

progressViewStyle : ProgressViewProgressViewStyle -> Property
progressViewStyle val =
  let
    stringValue = case progressViewStyle of
      ProgressViewProgressViewStyleDefault -> "default"
ProgressViewProgressViewStyleBar -> "bar"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "progressViewStyle" jsonValue

progress :  -> Property
progress val =
  JsonProperty "progress" (Json.Encode. val)

progressTintColor :  -> Property
progressTintColor val =
  JsonProperty "progressTintColor" (Json.Encode. val)

trackTintColor :  -> Property
trackTintColor val =
  JsonProperty "trackTintColor" (Json.Encode. val)
