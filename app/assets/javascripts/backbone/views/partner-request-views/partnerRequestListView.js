App.Views.PartnerRequestListView = Backbone.View.extend({
	el: '#requests-list',
	initialize: function(){
		console.log('New Partner Request List View created')
		this.listenTo(this.collection, 'reset', this.render);
	},

	render: function(){
		this.$el.empty();
		this.collection.each(function(partnerRequest) {
			var view = new App.Views.PartnerRequestView({ model: partnerRequest });
				this.$el.append(view.$el);
		}, this);
	}
})