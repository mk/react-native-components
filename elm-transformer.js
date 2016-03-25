'use strict';

const fs = require("fs");
const ejs = require("ejs");
const _ = require("lodash");
const capitalize = require("underscore.string/capitalize");
const decapitalize = require("underscore.string/decapitalize");

class ElmTransformer {
  constructor() {
    this.propertyTemplate = fs.readFileSync("templates/property.ejs", 'utf8');
    this.enumPropertyTemplate = fs.readFileSync("templates/enum-property.ejs", 'utf8');
    this.funcPropertyTemplate = fs.readFileSync("templates/func-property.ejs", 'utf8');
    this.elementTemplate = fs.readFileSync("templates/element.ejs", 'utf8');
    this.moduleTemplate = fs.readFileSync("templates/module.ejs", 'utf8');
    this.elementsModuleTemplate = fs.readFileSync("templates/elements-module.ejs", 'utf8');
  }

  module(moduleName, content, moduleExports) {
    return ejs.render(this.moduleTemplate, {
      moduleName: moduleName,
      content: content,
      moduleExports: moduleExports
    });
  }

  elementsModule(elements, modules) {
    var moduleExports = Object.keys(elements);
    var moduleNames = Object.keys(modules);
    moduleExports = moduleExports.concat(moduleNames);
    var moduleImports = moduleNames.map(function(moduleName) {
      return "import " + moduleName;
    });

    return ejs.render(this.elementsModuleTemplate, {
      content: _.values(elements).join("\n\n"),
      moduleExports: moduleExports.join(", "),
      moduleImports: moduleImports.join("\n")
    });
  }

  element(elementName, elementFuncName) {
    return ejs.render(this.elementTemplate, {
      elementName: elementName,
      elementFuncName: elementFuncName
    });
  }

  property(propName, propType) {
    return ejs.render(this.propertyTemplate, {
      propName: propName,
      propType: propType
    });
  }

  enumProperty(propName, moduleName, values) {
    var unionTypeName = capitalize(moduleName) + capitalize(propName);
    var unionTypeValue = function(value) {
      return unionTypeName + value.split("-").map(function(val) {
        return capitalize(val);
      }).join("");
    }
    var unionTypeValues = values.map(function(value) {
      return unionTypeValue(value);
    }).join("\n  | ");
    var valueFuncName = decapitalize(moduleName) + capitalize(propName) + "Value";
    var valueToStringCaseBody = values.map(function(value) {
      return unionTypeValue(value) + " -> " + '"' + value + '"';
    }).join("\n      ");

    return ejs.render(this.enumPropertyTemplate, {
      propName: propName,
      unionTypeName: unionTypeName,
      unionTypeValues: unionTypeValues,
      valueToStringCaseBody: valueToStringCaseBody
    });
  }

  funcProperty(funcName, args) {
    if (args) {
      var funcDef = "(" + capitalize(args.type) + "-> a)";
      var funcParamNames = args.type + "ToAction";
      var decoder = "Json.Decode." + args.type + " (\\" + args.name +" -> Signal.message address (" + funcParamNames + " " + args.name + "))";
    } else {
      var funcDef = "a";
      var funcParamNames = "action";
      var decoder = "Json.Decode.value (\\_ -> Signal.message address action)";
    }
    return ejs.render(this.funcPropertyTemplate, {
      funcName: funcName,
      handlerName: funcName.replace("on", ""),
      funcDef: funcDef,
      funcParamNames: funcParamNames,
      decoder: decoder
    });
  }
}

module.exports = ElmTransformer;
