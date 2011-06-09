$(document).ready(function() {
	$("div.panel_button").click(function(){
		$("div#panel").animate({
			height: "300px"
		})
		.animate({
			height: "200px"
		}, "fast");
		$("div.panel_button").toggle();
	
	});	
	
   $("div#hide_button").click(function(){
		$("div#panel").animate({
			height: "0px"
		}, "fast");
		
	
   });	
	
});