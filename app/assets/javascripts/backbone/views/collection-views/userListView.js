App.Views.userListView = Backbone.View.extend({
	tagName: 'div', 
	className: 'user-info', 
	initialize: function(){
		this.template = HandlebarsTemplates['all-users'];
		this.render();
	},

	render: function(){
		// put the model and the template together and stick the result into $el
		this.$el.html(this.template(this.model.toJSON()));
	}

})