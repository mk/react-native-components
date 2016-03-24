module Picker where
  enabled :  -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode. val)

type PickerMode
  = PickerDialog
| PickerDropdown

mode : PickerMode -> Property
mode val =
  let
    stringValue = case mode of
      PickerModeDialog -> "dialog"
PickerModeDropdown -> "dropdown"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "mode" jsonValue

prompt :  -> Property
prompt val =
  JsonProperty "prompt" (Json.Encode. val)

testID :  -> Property
testID val =
  JsonProperty "testID" (Json.Encode. val)
