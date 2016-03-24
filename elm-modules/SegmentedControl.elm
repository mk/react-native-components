module SegmentedControl (..) where


selectedIndex : Float -> Property
selectedIndex val =
  JsonProperty "selectedIndex" (Json.Encode.float val)


onValueChange : Signal.Address a -> a -> Property
onValueChange address msg =
  on "ValueChange" Json.Decode.value (\_ -> Signal.message address msg)


onChange : Signal.Address a -> a -> Property
onChange address msg =
  on "Change" Json.Decode.value (\_ -> Signal.message address msg)


enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)


tintColor : String -> Property
tintColor val =
  JsonProperty "tintColor" (Json.Encode.string val)


momentary : Bool -> Property
momentary val =
  JsonProperty "momentary" (Json.Encode.bool val)
