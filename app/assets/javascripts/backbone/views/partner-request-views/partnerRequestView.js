App.Views.PartnerRequestView = Backbone.View.extend({
	tagName: 'div', 
	className: 'request-info', 
	initialize: function(){
		this.template = HandlebarsTemplates['all-requests'];
		this.render();
	},
	events: {
		'click .accept': 'acceptPartnership',
		'click .deny': 'denyPartnership'
	},
	render: function(){
		// put the model and the template together and stick the result into $el
		this.$el.html(this.template(this.model.toJSON()));
	},
	acceptPartnership: function() {
		console.log('made it');
		$.ajax({
				url: 'partner_requests/accept_request',
				type: 'post',
				data: { "id": this.model.id},
				success: this.changeToAccepted.bind(this)
			});
	},
	changeToAccepted: function() {
		console.log(this);
		this.$el.empty();
		acceptedDiv = $('<div>').addClass('thumbnail request-view');
		accepted = $('<h3>').text('Accepted!');
		acceptedDiv.append(accepted)
		this.$el.append(acceptedDiv);
	},
	denyPartnership: function() {
		console.log('deny');
		$.ajax({
			url: '/partner_requests/' + this.model.id,
			type: 'post',
			dataType: 'json',
			data: { '_method': 'delete'},
			success: this.changeToDenied.bind(this)
		});
	},
	changeToDenied: function() {
		// fix this so maybe it removes the element then a pop up says "Partnership denied"
		console.log(this);
		this.$el.empty();
		this.$el.html("Denied");
	},
})