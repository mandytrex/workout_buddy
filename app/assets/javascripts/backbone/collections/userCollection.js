App.Collections.userCollection = Backbone.Collection.extend({
  model: App.Models.User,
  url: '/users',

  initialize: function() {
    console.log("New Users Collection");
  }
});