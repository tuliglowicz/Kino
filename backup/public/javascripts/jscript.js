var xhr = false;
var textRequest;
var miasto;

$("document").ready(initAll);

function initAll() {

	// events
	setInterval("events()", 2000);
	
	// zaopatrz linki z class=miasto w onclick z ajaxem
	$("a.miasto").each(
        function() {
	        $(this).click(
	            function() {
		            miasto = ($(this).html()).toUpperCase();
		            return makeRequest(pre_wyswietl_opis_kina, "daneMiast.xml", "GET");
		            //od zwróconej wartości (true/false) będzie zależało czy przeglądarka otworzy href w linku (true), czy zignoruje href (false)
		           }
	         );
        }
    );
}

function pre_wyswietl_opis_kina(isOk, outXML) {
	if (isOk)
		wyswietl_opis_kina(konwertuj_XML_do_Opisu(outXML));
	else
		wyswietl_opis_kina("There was a problem with the request " + xhr.status);
}

function konwertuj_XML_do_Opisu(outXML) {
    x= outXML.documentElement.getElementsByTagName("MIASTO");
    txt = "Dane niedostępne, kliknij TUTAJ, aby poinformować nas o błędzie. Dziękujemy i przepraszamy";
    for (i = 0; i < x.length; i++) {
    	if (x[i].getElementsByTagName("NAZWA_MIASTA")[0].firstChild.nodeValue.toUpperCase() == miasto) {
    
            try {
    	    
            txt = "<b>Miasto:</b> " + miasto + ",<br/>"; 
    	    
    	    	x = x[i].getElementsByTagName("KINO"); //wybraliśmy już miasto, teraz czas na kina w mieście x ~ KINO

    	    	for (j = 0; j < x.length; j++) {
    	    		txt += "&nbsp;<b>Adres:</b> " + x[j].getElementsByTagName("ADRES")[0].firstChild.nodeValue + ", ";
    	    		txt += "<b>Godziny otwarcia:</b> ";
    	    		txt += "<b><i>Pon.-Pt.:</i></b> " + x[j].getElementsByTagName("PnPt")[0].firstChild.nodeValue + ", ";
    	    		txt += "<b><i>So-Nd.:</i></b> " + x[j].getElementsByTagName("SoNd")[0].firstChild.nodeValue + "<br />";
    	    	}
    	    }
    	    catch (e) { txt = "Wystąpił problem, kliknij TUTAJ, aby poinformować nas o błędzie. Dziękujemy i Przepraszamy za utrudnienia" + e; }
    	    
    	break;
    	}
    }
    
    return txt;
}

function wyswietl_opis_kina(outMsg) {
    document.getElementById("opis_kina").innerHTML = "&nbsp;"+outMsg;
    $("#opis_kina").hide().show("fast");
}


        
/////////////////////////////////////////////////////////////////
///////////////////////                                          
////////////////////// Standalone function for cool picture efect

function events() {
   var cur = $("#events div.current");
   var next = cur.next();
   if (next.length == 0)
        next = $("#events div:first");
        
   cur.removeClass().addClass("previous");
   next.addClass("current").css({opacity: 0.0});
   next.animate({opacity:1.0}, 1000, function(){cur.removeClass("previous");});
}
/////////////////////////////////////////////////////////////////
/////////////////////////////////////////
//////////////////////////////////////// AJAX basic two functions
var _innerFun;
function makeRequest(_fun, _file, _method) {
	if (window.XMLHttpRequest) {
		xhr = new XMLHttpRequest();
	}
	else {
		if (window.ActiveXObject) {
			try {
				xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e) { }
		}
	}

	if (xhr) {
		_innerFun = _fun;
		xhr.onreadystatechange = showContents;
		xhr.open(_method, _file, true);
		xhr.send(null);

		return false; //mówi przeglądarce, że "OK, obsłużymy kliknięcie, zignoruj href linka"
	}
	else {
		//alert("Wybacz, ale poszło");
		return true; // mówi przeglądarce, żeby wyegzekwowała href linka
	}
}
function showContents() {
	if (xhr.readyState == 4) {

		if (xhr.status == 200) {
			var outXML = xhr.responseXML;

			_innerFun(true, outXML);			
		}
		else {
			_innerFun(false, null);
			
		}
	}
}
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////