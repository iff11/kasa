import AutoComplete from "ember-cli-auto-complete/components/auto-complete";

export default AutoComplete.extend({
  valueProperty: "id",
  suggestions: function() {
      var count = 0,
          firstName,
          lastName,
          found = false;
      var inputVal = this.get("inputVal") || "";

      return this.get("options").filter(function(item) {
        if(count < 10) {
          firstName = item.get("first_name") || "";
          lastName = item.get("last_name") || "";

          found =  firstName.toLowerCase().indexOf(inputVal.toLowerCase()) > -1 ||
                   lastName.toLowerCase().indexOf(inputVal.toLowerCase()) > -1 ;

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
          var value = item.get("first_name");
          caseInsensitiveOptions.push(value);
          caseInsensitiveOptions.push(value.toLowerCase());
      });
      return caseInsensitiveOptions;
  }.property("options.@each")
});
