App.Views.collectionView = Backbone.View.extend({
	el: '#collection',
	initialize: function(){
		this.listenTo(this.collection, 'reset', this.render);
	},

	render: function(){
		this.$el.empty();
		for (var i = 0; i < this.collection.models.length; i++){
			var user = this.collection.at(i);
			var view = new App.Views.userListView({ model: user});
				this.$el.append(view.$el);
		};
	}

})