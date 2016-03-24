'use strict';

var fs = require("fs");
var ejs = require("ejs");
var _ = require("lodash");
var capitalize = require("underscore.string/capitalize");
var decapitalize = require("underscore.string/decapitalize");

class ElmTransformer {
  constructor() {
    this.moduleTemplate = fs.readFileSync("templates/module.ejs", 'utf8');
    this.propertyTemplate = fs.readFileSync("templates/property.ejs", 'utf8');
    this.enumPropertyTemplate = fs.readFileSync("templates/enum-property.ejs", 'utf8');
  }

  module(moduleName, content) {
    return ejs.render(this.moduleTemplate, { moduleName: moduleName, content: content });
  }

  property(propName, propType) {
    return ejs.render(this.propertyTemplate, { propName: propName, propType: propType });
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
    }).join("\n| ");
    var valueFuncName = decapitalize(moduleName) + capitalize(propName) + "Value";
    var valueToStringCaseBody = values.map(function(value) {
      return unionTypeValue(value) + " -> " + '"' + value + '"';
    }).join("\n");

    return ejs.render(this.enumPropertyTemplate, {
      propName: propName,
      unionTypeName: unionTypeName,
      unionTypeValues: unionTypeValues,
      valueToStringCaseBody: valueToStringCaseBody
    });
  }
}

module.exports = ElmTransformer;
