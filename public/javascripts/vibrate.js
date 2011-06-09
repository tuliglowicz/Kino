$(document).ready(function() {
 
	$("#submit_butt").click( function() {
 
		// configurations for the buzzing effect. Be careful not to make it too annoying!
		var conf = {
				frequency: 5000,
				spread: 5,
				duration: 500
			};
 
		/* do your AJAX call and processing here...
			....
			....
		*/
 
		// this is the call we make when the AJAX callback function indicates a login failure 
		$("#login").vibrate(conf);
 
		// let's also display a notification
		if($("#errormsg").text() == "")
			$("#loginform").append('<p id="errormsg">Invalid username or password!</p>');
 
		// clear the fields to discourage brute forcing :)
 
		$("#username").val("");
		$("#pwd").val("");
 
	});
 
});