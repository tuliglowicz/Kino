if (top.frames.length!=0) top.location=self.document.location;


// -=========================================
var xhr = false;
var textRequest;
var miasto;

$j("document").ready(initAll);

function initAll() {
	// events
	/*
	setInterval("events()", 2000);
	setInterval("banners()", 4000);
	// zaopatrz linki z class=miasto w onclick z ajaxem
	$j("a.miasto, area.miasto").each(
        function() {
	        $j(this).click(
	            function() {
	            	if($j(this)[0].tagName=="A") miasto = ($j(this).html()).toUpperCase();
		            return makeRequest(pre_wyswietl_opis_kina, "/daneMiast.xml", "GET");
		            //od zwróconej wartości (true/false) będzie zależało czy przeglądarka otworzy href w linku (true), czy zignoruje href (false)
		           }
	         );
        }
    );
    
    szybkaRezerwacja();
    */
}

var tmpValue;
function szybkaRezerwacja(){
var theDiv = $j("#bookOnLine")[0];

	//przygotuj 'layout'
	theDiv.innerHTML += 
	"<br/>Wybierz kino:<br/><select id='bo_cinema_sel' onclick='tmpValue=this.value' onchange='if(this.value!=\"-1\"){ $j(\"#ajaxWaitInner\").show(); makeRequest(createOptionsForFilms, \"../../public/ajax/\"+this.value+\".xml?nr=1\", \"GET\");} else {this.value=tmpValue; return false;}'><option value='-1'>Wybierz Kino</option></select><br/>" +
	
	"<br/><span id='span_bo_film_sel'>Wybierz film:<br/><select id='bo_film_sel' onclick='tmpValue=this.value' onchange='if(this.value!=\"-1\"){ $j(\"#ajaxWaitInner\").show(); makeRequest(createOptionsForDays, \"../../public/ajax/\"+this.value+\".xml?nr=2\", \"GET\");} else {this.value=tmpValue; return false;}'><option value='-1'>Wybierz Film</option></select></span><br/>" +
	
	"<br/>Wybierz Dzień:<br/><select id='bo_day_sel' style='visibility:hidden' onclick='tmpValue=this.value' onchange='if(this.value!=\"-1\"){ $j(\"#ajaxWaitInner\").show(); makeRequest(createOptionsForHours, \"../../public/ajax/\"+document.getElementById(\"bo_film_sel\").value+\".xml?nr=2&date_from=\"+this.value, \"GET\");} else {this.value=tmpValue; return false;}'><option value='-1'>Wybierz Dzień</option></select><br/>" +
	
	"<br/>Wybierz godzinę:<br/><select id='bo_hour_sel' style='visibility:hidden' onclick='tmpValue=this.value' onchange='if(this.value!=\"-1\"){set_button()} else {this.value=tmpValue; return false;}'><option value='-1'>Wybierz Godzinę</option></select><br/><span id=AJAXerror></span>"+
	
	"<br><br><input type='button' id='bo_button' style='visibility:hidden' value='Kup Bilet!' onclick=location.href='../../public/zakup/'+document.getElementById(\"bo_hour_sel\").value>"

	//zapytaj o kina i zrób selecty
	makeRequest(createOptionsForCinemas, "../../cinemas.xml", "GET");
	//wyswietl selecta; onchange -> kolejne akcje
	
}
function set_button(){
	document.getElementById("bo_button").style.visibility='visible';
}

function createOptions(xmlObj, firstTag, secondTag, thirdTag, selectId)
{
	document.getElementById("AJAXerror").innerHTML =""
	document.getElementById(selectId).options.length = 1;
	
	if(xmlObj && !xmlObj.getElementsByTagName("nil-classes").length==1)
	{
		x = xmlObj.getElementsByTagName(firstTag);
		
		for(i=0; i<x.length; i++)
		{
			txt = x[i].getElementsByTagName(secondTag)[0].firstChild.nodeValue;
			if(secondTag == "time-from")
			{
				txt = txt.split(":");
				txt = txt[0]+":"+txt[1];
			}
			id = x[i].getElementsByTagName(thirdTag)[0].firstChild.nodeValue;
			if(firstTag=="cinema") document.getElementById("cinemas").options[i+1] = new Option(txt, id, $j.cookie("cinema_id")==id);
			document.getElementById(selectId).options[i+1] = new Option(txt, id);
			document.getElementById(selectId).style.visibility = "visible";
		}
	} else
			document.getElementById("AJAXerror").innerHTML = "Przykro nam, nie znaleziono wyników dla podanego wyszukania."
			
	$j("#ajaxWaitInner").hide();
}

function createOptionsForHours(ifcase, xmlObj){
	createOptions(xmlObj, "object", "time-from", "id", "bo_hour_sel");
}

function createOptionsForDays(ifcase, xmlObj){

	document.getElementById("bo_button").style.visibility = "hidden";
	document.getElementById("bo_hour_sel").style.visibility = "hidden";
	
	createOptions(xmlObj, "object", "date-from", "date-from", "bo_day_sel");
}

function createOptionsForFilms(ifcase, xmlObj){

	document.getElementById("bo_button").style.visibility = "hidden";
	document.getElementById("bo_hour_sel").style.visibility = "hidden";
	document.getElementById("bo_day_sel").style.visibility = "hidden";
			
	createOptions(xmlObj, "object", "title", "id", "bo_film_sel");
}

function createOptionsForCinemas(ifcase, xmlObj){

	document.getElementById("bo_button").style.visibility = "hidden";
	document.getElementById("bo_hour_sel").style.visibility = "hidden";
	document.getElementById("bo_day_sel").style.visibility = "hidden";
	document.getElementById("bo_film_sel").style.visibility = "hidden";
	
	createOptions(xmlObj, "cinema", "name", "id", "bo_cinema_sel");	
}

function pre_wyswietl_opis_kina(isOk, outXML) {
	if (isOk)
		wyswietl_opis_kina(konwertuj_XML_do_Opisu(outXML));
	else
		wyswietl_opis_kina("There was a problem with the request " + xhr.status);
}

function konwertuj_XML_do_Opisu(outXML) {
    x = outXML.documentElement.getElementsByTagName("MIASTO");
    txt = "Dane niedostępne, kliknij TUTAJ, aby poinformować nas o błędzie. Dziękujemy i przepraszamy";
    for (i = 0; i < x.length; i++)
    {
    	if (x[i].getElementsByTagName("NAZWA_MIASTA")[0].firstChild.nodeValue.toUpperCase() == miasto)
    	{    
            try
            {
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
    $j("#opis_kina").hide().show("fast");
}

        
/////////////////////////////////////////////////////////////////
///////////////////////                                          
////////////////////// Standalone function for cool picture efect

function events() {
   var cur = $j("#events div.current");
   var next = cur.next();
   if (next.length == 0)
        next = $j("#events div:first");
        
   cur.removeClass().addClass("previous");
   next.addClass("current").css({opacity: 0.0});
   next.animate({opacity:1.0}, 1000, function(){cur.removeClass("previous");});
}
function banners() {
   var cur = $j("#banners div.current");
   var next = cur.next();
   if (next.length == 0)
        next = $j("#banners div:first");
        
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