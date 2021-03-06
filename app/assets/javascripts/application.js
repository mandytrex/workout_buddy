// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require handlebars
//= require bootstrap.min
//= require_self
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree ./templates
//= require_tree .

var App = {
	Models: {}, 
	Collections: {}, 
	Views: {}, 
	Routers: {},
	initialize: function() {
		if ($('#users-list').length) {
			console.log("Loaded, bro");
    	App.users = new App.Collections.UserCollection();
    	App.usersView = new App.Views.UsersListView({ collection:App.users});
    	App.users.fetch({reset: true});
		}
		if ($('#requests-list').length) {
			console.log("Requests loaded.")
			App.requests = new App.Collections.PartnerRequestCollection();
    	App.requestsView = new App.Views.PartnerRequestListView({ collection:App.requests});
    	App.requests.fetch({reset: true});
			}
 	 }
};

$(function() {
  App.initialize();
});

// //PARTNER REQUESTS MAKE MORE SENSE AS TEMPLATE VIEW SO IT CAN UPDATE IN REAL TIME
// var acceptPartnership = function(event) {
// 		console.log('accept');
// 		var requesterID = event.target.id;
// 		console.log("Requester: " + requesterID);
// 		var currentUser = $('h2').attr('id');
// 		console.log("Receiver: " + currentUser);
// 		var requestID = $('p.request-info').attr('id');
// 		var acceptDataCurrentUser = {
// 			user: {
// 				partner_id: requesterID
// 			}
// 		};
// 		var acceptDataPartner = {
// 			user: {
// 				partner_id: currentUser
// 			}
// 		};
// 			$.ajax({
// 				url: '/users/' + currentUser + 'accept_request',
// 				type: 'put',
// 				data: acceptDataCurrentUser,
// 				success: function() {
// 					$.ajax({
// 						url: '/users/' + requesterID + 'accept_request',
// 						type: 'put',
// 						data: acceptDataPartner,
// 						success: function() {
// 							$.ajax({
// 								url: '/partner_requests/' + requestID,
// 								type: 'post',
// 								dataType: 'json',
// 								data: { '_method': 'delete'},
// 								success: function() {
// 									window.location.reload(true);
// 								}
// 							});
// 						}
// 					});
// 					console.log('hello');
// 				}
// 			});
// 	};


// var denyPartnership = function(event) {
// 		console.log('deny');
// 		var requestID = $('p.request-info').attr('id');
// 		console.log(requestID);
// 			$.ajax({
// 				url: '/partner_requests/' + requestID,
// 				type: 'post',
// 				dataType: 'json',
// 				data: { '_method': 'delete'},
// 				success: function() {
// 					window.location.reload(true);
// 				}
// 			});
// 	};
