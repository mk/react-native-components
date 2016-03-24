#!/usr/bin/env node
'use strict';

const reactDocs = require('react-docgen');
const fs = require("fs");
const _ = require("lodash");
const decapitalize = require("underscore.string/decapitalize");
const ElmTransformer = require("./elm-transformer");
const exec = require("child_process").exec;
const rimraf = require("rimraf");

const elmModulesDir = "elm-modules/";
const rnLibPath = "node_modules/react-native/Libraries/";
const rnModulePathPrefixes = ["Components", "Text"];
const rnModuleFiles = [
  // "DatePicker/DatePicker.js",
  // "Intent/Intent.js",
  // "Navigation/Navigation.js",
  // "ViewPager/ViewPager.js",
  // "WebView/WebView.js",
  // "DrawerAndroid/DrawerLayoutAndroid.android.js",
  "Components/ActivityIndicatorIOS/ActivityIndicatorIOS.ios.js",
  "Components/Clipboard/Clipboard.js",
  "Components/DatePickerAndroid/DatePickerAndroid.android.js",
  "Components/MapView/MapView.js",
  "Components/Picker/Picker.js",
  "Components/ProgressBarAndroid/ProgressBarAndroid.android.js",
  "Components/ProgressViewIOS/ProgressViewIOS.ios.js",
  "Components/RefreshControl/RefreshControl.js",
  "Components/ScrollView/ScrollView.js",
  "Components/SegmentedControlIOS/SegmentedControlIOS.ios.js",
  "Components/SliderIOS/SliderIOS.ios.js",
  "Components/StatusBar/StatusBar.js",
  "Components/Switch/Switch.js",
  "Components/SwitchAndroid/SwitchAndroid.android.js",
  "Components/SwitchIOS/SwitchIOS.ios.js",
  "Components/TabBarIOS/TabBarIOS.ios.js",
  "Components/ActivityIndicatorIOS/ActivityIndicatorIOS.ios.js",
  "Text/Text.js",
  "Components/TextInput/TextInput.js",
  "Components/TimePickerAndroid/TimePickerAndroid.android.js",
  "Components/ToastAndroid/ToastAndroid.android.js",
  "Components/ToolbarAndroid/ToolbarAndroid.android.js",
  "Components/Touchable/Touchable.js",
  "Components/View/View.js"
];
const funcPropertyArgs = {
  "onChangeText": { name: "text", type: "string" },
  "onValueChange": { name: "value", type: "string" }
}
const elmTransformer = new ElmTransformer();

function enumValues(jsonValues) {
  return jsonValues.map(function(val) {
    return val.value.replace(/'/g, "").replace(/"/g, "");
  });
}

function rnModuleName(fileName) {
  rnModulePathPrefixes.forEach(function(prefix) {
    fileName = fileName.replace(prefix + "/", "");
  });
  return fileName
    .replace(/^([^\/]*\/|)/, "")
    .replace("IOS.ios.js", "")
    .replace("Android.android.js", "")
    .replace(".js", "");
}

function generateElm(moduleJson) {
  const allowedPropTypes = ["bool", "string", "number", "enum", "func"];
  const elmPropTypes = {
    "bool": { type: "Bool", encoder: "bool" },
    "string": { type: "String", encoder: "string" },
    "number": { type: "Float", encoder: "float" }
  };
  var elements = {};
  var handlers = {};
  var properties = {};

  _(moduleJson).each(function(module, moduleName) {
    let propNames = Object.keys(module.props);

    let elementFuncName = decapitalize(moduleName);
    elements[elementFuncName] = elmTransformer.element(moduleName, elementFuncName);
    propNames.forEach(function(propName) {
      if (module.props[propName].type) { // Ignore props without type for now
        let propType = module.props[propName].type.name;

        if (allowedPropTypes.indexOf(propType) !== -1) {
          if (propType === "enum") {
            if (!properties[propName]) {
              let values = module.props[propName].type.value;
              if (_.isArray(values)) { // Ignore non-Array enums for now
                properties[propName] =  elmTransformer.enumProperty(
                  propName,
                  moduleName,
                  enumValues(module.props[propName].type.value)
                );
              }
            }
          } else if (propType === "func") {
            if (!handlers[propName]) {
              handlers[propName] = elmTransformer.funcProperty(
                propName,
                funcPropertyArgs[propName]
              );
            }
          } else {
            if (!properties[propName]) {
              properties[propName] = elmTransformer.property(
                propName,
                elmPropTypes[propType]
              );
            }
          }
        }
      }
    });
  });
  generateElmModuleFile("Properties.elm", "properties-module.ejs", properties);
  generateElmModuleFile("Handlers.elm", "handlers-module.ejs", handlers);
  generateElmModuleFile("Elements.elm", "elements-module.ejs", elements);
}

function generateElmModuleFile(fileName, templateFile, content) {
  let moduleContent = elmTransformer.module(
    templateFile,
    _.values(content).join("\n\n"),
    Object.keys(content).join(", ")
  );
  fs.writeFileSync(
    elmModulesDir + fileName,
    moduleContent,
    "utf8"
  );
}

function generateRNModuleSpec(moduleJson) {
  fs.writeFileSync(
    "rn-modules.json",
    JSON.stringify(moduleJson, null, 2),
    "utf8"
  );
}

(function() {
  var rnModulesJson = {};

  rnModuleFiles.forEach(function(file) {
    var source = fs.readFileSync(rnLibPath + file, 'utf8');
    let moduleName = rnModuleName(file);

    try {
      let json = reactDocs.parse(source);
      if (json) {
        rnModulesJson[moduleName] = json;
      }
    } catch (e) {
      console.log(e);
    }
  });
  if (Object.keys(rnModulesJson).length > 0) {
    rimraf(elmModulesDir, {}, function() {
      fs.mkdir(elmModulesDir, function() {
        generateElm(rnModulesJson);
        generateRNModuleSpec(rnModulesJson);
        exec("elm-format --yes " + elmModulesDir, function(error, stdout, stderr) {
          console.log(stdout);
        });
      });
    });
  }
})();
