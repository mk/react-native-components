module DrawerLayout where

type DrawerLayoutKeyboardDismissMode
  = DrawerLayoutKeyboardDismissModeNone
| DrawerLayoutKeyboardDismissMode"onDrag"

keyboardDismissMode : DrawerLayoutKeyboardDismissMode -> Property
keyboardDismissMode val =
  let
    stringValue = case keyboardDismissMode of
      DrawerLayoutKeyboardDismissModeNone -> "none"
DrawerLayoutKeyboardDismissMode"onDrag" -> ""on-drag""
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "keyboardDismissMode" jsonValue

type DrawerLayoutDrawerPosition
  = DrawerLayoutDrawerPositionDrawerConsts.DrawerPosition.Left
| DrawerLayoutDrawerPositionDrawerConsts.DrawerPosition.Right

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
  = DrawerLayoutDrawerLockModeUnlocked
| DrawerLayoutDrawerLockModeLockedClosed
| DrawerLayoutDrawerLockModeLockedOpen

drawerLockMode : DrawerLayoutDrawerLockMode -> Property
drawerLockMode val =
  let
    stringValue = case drawerLockMode of
      DrawerLayoutDrawerLockModeUnlocked -> "unlocked"
DrawerLayoutDrawerLockModeLockedClosed -> "locked-closed"
DrawerLayoutDrawerLockModeLockedOpen -> "locked-open"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "drawerLockMode" jsonValue
