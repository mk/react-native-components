module MapView where
  showsUserLocation :  -> Property
showsUserLocation val =
  JsonProperty "showsUserLocation" (Json.Encode. val)

followUserLocation :  -> Property
followUserLocation val =
  JsonProperty "followUserLocation" (Json.Encode. val)

showsPointsOfInterest :  -> Property
showsPointsOfInterest val =
  JsonProperty "showsPointsOfInterest" (Json.Encode. val)

showsCompass :  -> Property
showsCompass val =
  JsonProperty "showsCompass" (Json.Encode. val)

zoomEnabled :  -> Property
zoomEnabled val =
  JsonProperty "zoomEnabled" (Json.Encode. val)

rotateEnabled :  -> Property
rotateEnabled val =
  JsonProperty "rotateEnabled" (Json.Encode. val)

pitchEnabled :  -> Property
pitchEnabled val =
  JsonProperty "pitchEnabled" (Json.Encode. val)

scrollEnabled :  -> Property
scrollEnabled val =
  JsonProperty "scrollEnabled" (Json.Encode. val)

type MapViewMapType
  = MapViewStandard
| MapViewSatellite
| MapViewHybrid

mapType : MapViewMapType -> Property
mapType val =
  let
    stringValue = case mapType of
      MapViewMapTypeStandard -> "standard"
MapViewMapTypeSatellite -> "satellite"
MapViewMapTypeHybrid -> "hybrid"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "mapType" jsonValue

maxDelta :  -> Property
maxDelta val =
  JsonProperty "maxDelta" (Json.Encode. val)

minDelta :  -> Property
minDelta val =
  JsonProperty "minDelta" (Json.Encode. val)

active :  -> Property
active val =
  JsonProperty "active" (Json.Encode. val)
