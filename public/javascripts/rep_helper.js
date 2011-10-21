/**
 * @author Kamil
 */

function trim(txt, length){
	var text = txt.split(" ");
	var txt = "";
	
	min = Math.min(text.length, length)
	
	for(var i=0; i<min; i++)
		txt += text[i] + " ";
	
	
	if(text.length > length)
		txt += "...";
	
	res = {};
	res.t = txt;
	res.len = text.length;
	return res;
}


		/*				
function f(film_id){
	/*$(document).ready(function() {
   		document.writeln("dom is ready");
 	});
 	*/
	//document.writeln("dupa");
	//document.writeln(document.getElementById(film_id).getStyle('display') != 'none');
	/*
	minusID=-film_id;					

										
	if (document.getElementById(minusID).firstChild.nodeValue =='rozwiń') 
		document.getElementById(minusID).firstChild.nodeValue = 'zwiń';
	else {
		document.getElementById(minusID).firstChild.nodeValue = 'rozwiń';
		 }

		//$j(document).ready(function(){
		    //$j('#film_id').slideToggle("slow");
		//});


	}
	
	function g(){
	document.writeln("x");
	}							
*/