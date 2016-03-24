module Picker (..) where


onValueChange : Signal.Address a -> (String -> a) -> Property
onValueChange address stringToAction =
  on "ValueChange" Json.Decode.string (\value -> Signal.message address (stringToAction value))


enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)


type PickerMode
  = PickerModeDialog
  | PickerModeDropdown


mode : PickerMode -> Property
mode val =
  let
    stringValue =
      case mode of
        PickerModeDialog ->
          "dialog"

        PickerModeDropdown ->
          "dropdown"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "mode" jsonValue


prompt : String -> Property
prompt val =
  JsonProperty "prompt" (Json.Encode.string val)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)
