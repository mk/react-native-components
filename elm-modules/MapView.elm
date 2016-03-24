module MapView (..) where


showsUserLocation : Bool -> Property
showsUserLocation val =
  JsonProperty "showsUserLocation" (Json.Encode.bool val)


followUserLocation : Bool -> Property
followUserLocation val =
  JsonProperty "followUserLocation" (Json.Encode.bool val)


showsPointsOfInterest : Bool -> Property
showsPointsOfInterest val =
  JsonProperty "showsPointsOfInterest" (Json.Encode.bool val)


showsCompass : Bool -> Property
showsCompass val =
  JsonProperty "showsCompass" (Json.Encode.bool val)


zoomEnabled : Bool -> Property
zoomEnabled val =
  JsonProperty "zoomEnabled" (Json.Encode.bool val)


rotateEnabled : Bool -> Property
rotateEnabled val =
  JsonProperty "rotateEnabled" (Json.Encode.bool val)


pitchEnabled : Bool -> Property
pitchEnabled val =
  JsonProperty "pitchEnabled" (Json.Encode.bool val)


scrollEnabled : Bool -> Property
scrollEnabled val =
  JsonProperty "scrollEnabled" (Json.Encode.bool val)


type MapViewMapType
  = MapViewMapTypeStandard
  | MapViewMapTypeSatellite
  | MapViewMapTypeHybrid


mapType : MapViewMapType -> Property
mapType val =
  let
    stringValue =
      case mapType of
        MapViewMapTypeStandard ->
          "standard"

        MapViewMapTypeSatellite ->
          "satellite"

        MapViewMapTypeHybrid ->
          "hybrid"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "mapType" jsonValue


maxDelta : Float -> Property
maxDelta val =
  JsonProperty "maxDelta" (Json.Encode.float val)


minDelta : Float -> Property
minDelta val =
  JsonProperty "minDelta" (Json.Encode.float val)


onRegionChange : Signal.Address a -> a -> Property
onRegionChange address action =
  on "RegionChange" Json.Decode.value (\_ -> Signal.message address action)


onRegionChangeComplete : Signal.Address a -> a -> Property
onRegionChangeComplete address action =
  on "RegionChangeComplete" Json.Decode.value (\_ -> Signal.message address action)


onAnnotationPress : Signal.Address a -> a -> Property
onAnnotationPress address action =
  on "AnnotationPress" Json.Decode.value (\_ -> Signal.message address action)


active : Bool -> Property
active val =
  JsonProperty "active" (Json.Encode.bool val)
