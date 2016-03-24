module DrawerLayout where
  

drawerWidth : Float -> Property
drawerWidth val =
  JsonProperty "drawerWidth" (Json.Encode.float val)






