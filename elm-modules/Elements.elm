module NativeUi.Elements (activityIndicator, mapView, picker, progressBar, progressView, refreshControl, scrollView, segmentedControl, slider, statusBar, switch, tabBar, text, textInput, toolbar, view, ActivityIndicator, MapView, Picker, ProgressBar, ProgressView, RefreshControl, ScrollView, SegmentedControl, Slider, StatusBar, Switch, TabBar, Text, TextInput, Toolbar, View) where

import NativeUi exposing (Property, NativeUi)
import ActivityIndicator
import MapView
import Picker
import ProgressBar
import ProgressView
import RefreshControl
import ScrollView
import SegmentedControl
import Slider
import StatusBar
import Switch
import TabBar
import Text
import TextInput
import Toolbar
import View


activityIndicator : List Property -> List NativeUi -> NativeUi
activityIndicator =
  VNode "ActivityIndicator"


mapView : List Property -> List NativeUi -> NativeUi
mapView =
  VNode "MapView"


picker : List Property -> List NativeUi -> NativeUi
picker =
  VNode "Picker"


progressBar : List Property -> List NativeUi -> NativeUi
progressBar =
  VNode "ProgressBar"


progressView : List Property -> List NativeUi -> NativeUi
progressView =
  VNode "ProgressView"


refreshControl : List Property -> List NativeUi -> NativeUi
refreshControl =
  VNode "RefreshControl"


scrollView : List Property -> List NativeUi -> NativeUi
scrollView =
  VNode "ScrollView"


segmentedControl : List Property -> List NativeUi -> NativeUi
segmentedControl =
  VNode "SegmentedControl"


slider : List Property -> List NativeUi -> NativeUi
slider =
  VNode "Slider"


statusBar : List Property -> List NativeUi -> NativeUi
statusBar =
  VNode "StatusBar"


switch : List Property -> List NativeUi -> NativeUi
switch =
  VNode "Switch"


tabBar : List Property -> List NativeUi -> NativeUi
tabBar =
  VNode "TabBar"


text : List Property -> List NativeUi -> NativeUi
text =
  VNode "Text"


textInput : List Property -> List NativeUi -> NativeUi
textInput =
  VNode "TextInput"


toolbar : List Property -> List NativeUi -> NativeUi
toolbar =
  VNode "Toolbar"


view : List Property -> List NativeUi -> NativeUi
view =
  VNode "View"
