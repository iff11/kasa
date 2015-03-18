import AutoComplete from "ember-cli-auto-complete/components/auto-complete";

export default AutoComplete.extend({
  valueProperty: "",
  suggestions: function() {
      var count = 0,
          name,
          barcode,
          found = false;
      var inputVal = this.get("inputVal") || "";

      return this.get("options").filter(function(item) {
        if(count < 10) {
          name = item.get("name") || "";
          barcode = item.get("barcode") || "";

          found = name.toLowerCase().indexOf(inputVal.toLowerCase()) > -1 ||
                  barcode.toLowerCase().indexOf(inputVal.toLowerCase()) > -1 ;

          if(found) {
            count++;
          }
          return found;
        }
      });
  }.property("inputVal", "options.@each"),

  optionsToMatch: function() {
      var caseInsensitiveOptions = [];
      this.get("options").forEach(function(item) {
          var value = item.get("barcode");
          if(value !== null) {
            caseInsensitiveOptions.push(value);
            caseInsensitiveOptions.push(value.toLowerCase());
          }
      });
      return caseInsensitiveOptions;
  }.property("options.@each")
});
