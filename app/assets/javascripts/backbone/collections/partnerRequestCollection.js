App.Collections.PartnerRequestCollection = Backbone.Collection.extend({
  model: App.Models.PartnerRequest,
  url: '/partner_requests',

  initialize: function() {
    console.log("New Partner Request Collection");
  }
});