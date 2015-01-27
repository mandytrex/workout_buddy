App.Views.UsersListView = Backbone.View.extend({
	el: '#users-list',
	initialize: function(){
		this.listenTo(this.collection, 'reset', this.render);
	},

	render: function(){
		this.$el.empty();
		for (var i = 0; i < this.collection.models.length; i++){
			var user = this.collection.at(i);
			var view = new App.Views.UserView({ model: user});
				this.$el.append(view.$el);
		};
	},
	events: {
		'click .request': 'createPartnerRequest'
	},
	createPartnerRequest: function(event) {
		var receiverID = event.target.id;
		console.log('hi');
		var requesterID = $('div.container').attr('id');
		var requestData = {
			partner_request: {
				requester_id: requesterID,
				receiver_id: receiverID
			}
		};

		$.post('/partner_requests', requestData).done(function(request) {
			// Add request to the partner request table
		})
		$('button.request').hide();
	}
})