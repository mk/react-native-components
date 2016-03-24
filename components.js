#!/usr/bin/env node

(function(){
  var reactDocs = require('react-docgen');
  var fs = require("fs");
  var ejs = require("ejs");
  var prefix = "node_modules/react-native/Libraries/Components/";

  var ElmTransformer = {
    module: function(name, content) {
      var template = fs.readFileSync("templates/module.ejs", 'utf8');
      return ejs.render(template, { name: name, content: content });
    }
  }

  var componentFiles = [
    // "DatePicker/DatePicker.js",
    // "Intent/Intent.js",
    // "Navigation/Navigation.js",
    // "ViewPager/ViewPager.js",
    // "WebView/WebView.js"
    "ActivityIndicatorIOS/ActivityIndicatorIOS.ios.js",
    "Clipboard/Clipboard.js",
    "DatePickerAndroid/DatePickerAndroid.android.js",
    "DrawerAndroid/DrawerLayoutAndroid.android.js",
    "MapView/MapView.js",
    "Picker/Picker.js",
    "ProgressBarAndroid/ProgressBarAndroid.android.js",
    "ProgressViewIOS/ProgressViewIOS.ios.js",
    "RefreshControl/RefreshControl.js",
    "ScrollView/ScrollView.js",
    "SegmentedControlIOS/SegmentedControlIOS.ios.js",
    "SliderIOS/SliderIOS.ios.js",
    "StatusBar/StatusBar.js",
    "Switch/Switch.js",
    "SwitchAndroid/SwitchAndroid.android.js",
    "SwitchIOS/SwitchIOS.ios.js",
    "TabBarIOS/TabBarIOS.ios.js",
    "TextInput/TextInput.js",
    "TimePickerAndroid/TimePickerAndroid.android.js",
    "ToastAndroid/ToastAndroid.android.js",
    "ToolbarAndroid/ToolbarAndroid.android.js",
    "Touchable/Touchable.js",
    "View/View.js"
  ];
  componentFiles.forEach(function(file) {
    var source = fs.readFileSync(prefix + file, 'utf8');
    var componentName = file
      .replace(/^([^\/]*\/|)/, "")
      .replace("IOS.ios.js", "")
      .replace("Android.android.js", "");
    try {
      var json = reactDocs.parse(source);
      var elmComponent = ElmTransformer.module(componentName, "");
      fs.writeFileSync(
        "components/" + componentName + ".elm",
        elmComponent,
        "utf8"
      );
    } catch (e) {
      console.log("Definitions are missing for: " + file);
    }
  });
})();
