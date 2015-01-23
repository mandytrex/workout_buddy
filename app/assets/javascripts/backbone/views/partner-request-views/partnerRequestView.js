App.Views.PartnerRequestView = Backbone.View.extend({
	tagName: 'div', 
	className: 'request-info', 
	initialize: function(){
		this.template = HandlebarsTemplates['all-requests'];
		this.render();
	},

	render: function(){
		// put the model and the template together and stick the result into $el
		this.$el.html(this.template(this.model.toJSON()));
	}

})