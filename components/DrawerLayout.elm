module DrawerLayout where

type DrawerLayoutKeyboardDismissMode
  = DrawerLayoutNone
| DrawerLayout"on-drag"

keyboardDismissMode : DrawerLayoutKeyboardDismissMode -> Property
keyboardDismissMode val =
  let
    stringValue = case keyboardDismissMode of
      DrawerLayoutKeyboardDismissModeNone -> "none"
DrawerLayoutKeyboardDismissMode"on-drag" -> ""on-drag""
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "keyboardDismissMode" jsonValue

type DrawerLayoutDrawerPosition
  = DrawerLayoutDrawerConsts.DrawerPosition.Left
| DrawerLayoutDrawerConsts.DrawerPosition.Right

drawerPosition : DrawerLayoutDrawerPosition -> Property
drawerPosition val =
  let
    stringValue = case drawerPosition of
      DrawerLayoutDrawerPositionDrawerConsts.DrawerPosition.Left -> "DrawerConsts.DrawerPosition.Left"
DrawerLayoutDrawerPositionDrawerConsts.DrawerPosition.Right -> "DrawerConsts.DrawerPosition.Right"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "drawerPosition" jsonValue

drawerWidth : Float -> Property
drawerWidth val =
  JsonProperty "drawerWidth" (Json.Encode.float val)

type DrawerLayoutDrawerLockMode
  = DrawerLayoutUnlocked
| DrawerLayoutLocked-closed
| DrawerLayoutLocked-open

drawerLockMode : DrawerLayoutDrawerLockMode -> Property
drawerLockMode val =
  let
    stringValue = case drawerLockMode of
      DrawerLayoutDrawerLockModeUnlocked -> "unlocked"
DrawerLayoutDrawerLockModeLocked-closed -> "locked-closed"
DrawerLayoutDrawerLockModeLocked-open -> "locked-open"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "drawerLockMode" jsonValue
