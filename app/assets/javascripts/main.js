$(document).ready(function() {

	$("#flash").fadeOut(7000);

	$(".message").fadeIn(4000);

	var words = ["beyond borders...", "without poverty...", "of equality...", "that cares for all...", "for the Beautiful Community."]

	var i = 0;

	setInterval(function() {
	    $('#messages').text( "A Nation " + words[i++]);
	    if (i == words.length+1) {
	    	$('#messages').hide()
	    	$('#invite').fadeIn(3000)
	    };
	}, 2000); 

	// $('.prowrapper').slick({
	// 	infinite: true,
	// 	slidesToShow: 4,
	// 	slidesToScroll: 4
	// });

});