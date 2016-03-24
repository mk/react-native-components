module SegmentedControl (..) where


selectedIndex : Float -> Property
selectedIndex val =
  JsonProperty "selectedIndex" (Json.Encode.float val)


onValueChange : Signal.Address a -> (String -> a) -> Property
onValueChange address stringToAction =
  on "ValueChange" Json.Decode.string (\value -> Signal.message address (stringToAction value))


onChange : Signal.Address a -> (Object -> a) -> Property
onChange address objectToAction =
  on "Change" Json.Decode.object (\event -> Signal.message address (objectToAction event))


enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)


tintColor : String -> Property
tintColor val =
  JsonProperty "tintColor" (Json.Encode.string val)


momentary : Bool -> Property
momentary val =
  JsonProperty "momentary" (Json.Encode.bool val)
