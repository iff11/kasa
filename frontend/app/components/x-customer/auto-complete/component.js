import AutoComplete from "ember-cli-auto-complete/components/auto-complete";

export default AutoComplete.extend({
  valueProperty: "id",
  suggestions: function() {
      var count = 0;
      var inputVal = this.get("inputVal") || "";

      return this.get("options").filter(function(item) {
          return item.get("first_name").toLowerCase().indexOf(inputVal.toLowerCase()) > -1 && count++ < 10;
      });
  }.property("inputVal", "options.@each"),
  optionsToMatch: function() {
      var caseInsensitiveOptions = [];
      this.get("options").forEach(function(item) {
          var value = item.get("first_name");
          caseInsensitiveOptions.push(value);
          caseInsensitiveOptions.push(value.toLowerCase());
      });
      return caseInsensitiveOptions;
  }.property("options.@each")
});
