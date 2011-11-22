// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

if (top.frames.length!=0) top.location=self.document.location;

$j(document).ready(function(){
	$j("a.youtube_trailer").live("click", centeredMovie);
	$j("a.repertuarTime, a.change_cinema").live("click", ajaxPageLoad);
});

function setEverythingAfterLogin(user_json, isUser){
	isRegisteredUser = isUser;
	user = isUser ? user_json["user"] : user_json["unregistered_user"] ;
	user_id = user.id;
	user_name = user.first_name+" "+user.last_name
	userDataString = "Użytkownik: "+user_name+"<br/><br/>"
	$j("#user_data").html(userDataString).myShow(250);	

	if(isUser){
		var newWyloguj = "<a class='main_menu bck_color' href='"+logout_path+"'>Wyloguj ("+user_name+")</a>";
		$j("div.link_login").html("").removeClass("link_login").addClass("link_logout").append(newWyloguj).myShow(500);
			
		$j("#e9").myShow(500);
	}
	
	if(page_name != undefined && page_name == "zakup"){
		nextStep();
	}
}

function ajaxPageLoad(target){
	$j("#ajaxPageLoadTarget").animate({"opacity": "0"}, 250);
	$j("#preloader_podluzny").show();
	page = $j.ajax({
			url: this.href,
			type: "GET",
			dataType : 'html',
			success: function (recievedHTML){
					//alert(recievedHTML)
					$j("#ajaxPageLoadTarget").html(recievedHTML).animate({"opacity": "1"}, 250);
					$j("#preloader_podluzny").hide();
					page = null;
					
				},
				error: function(){
					//alert("error")
					$j("#ajaxPageLoadTarget").animate({"opacity": "1"}, 250, alert("Wystąpił problem z połączeniem."));
					$j("#preloader_podluzny").hide();
					//window.location.href = this.href;
				}
		  });
	return false;
}

jQuery.fn.myHide = function(interval){
	if(interval == undefined)
		try {this.style.display = 'none';}
		catch(e){alert("myHide:"+e);}
	else
		jQuery(this).animate({opacity: 0}, interval, function(){ this.style.display = 'none'; $j(this).css("opacity", 1);});
}
jQuery.fn.myShow = function(interval){						
	if(interval == undefined)
		try {this.style.display = 'inherit';}
		catch(e){alert("myShow:"+e);}
	else
		jQuery(this).css("opacity", 0).show().animate({opacity: 1}, interval);
}

function centeredMovie(){
	$j("<div id='movieTrailer'></div>").appendTo("body");
	var v = this.href.substring(31,42);
	var topCoord = Math.round((window.innerHeight - 335)/2);
	var leftCoord = Math.round((window.innerWidth - 560)/2);
	//alert(topCoord+":"+leftCoord);
	
	$j("#movieTrailer").attr("style", "text-align:right;position:fixed;top:0px;left:0px;width:100%;height:100%;background-color:black;opacity:0.8;z-index:999;display:block;").html('<embed src="http://www.youtube.com/v/'+v+'?version=3&amp;hl=pl_PL" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true" style="position:fixed;top:'+topCoord+'px;left:'+leftCoord+'px;"></embed><br><span style="background-color:black;opacity:1;font-size:18px;text-align:right;font-weight:bold;">Kliknij w tło strony, aby zamknąć film.</style>').click(function(){
		$j("#movieTrailer").css("display","none");return false;
		});
	
	return false;
}

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
 * jYoutube 1.0 - YouTube video image getter plugin for jQuery
 *
 * Copyright (c) 2009 jQuery Howto
 *
 * Licensed under the GPL license:
 *   http://www.gnu.org/licenses/gpl.html
 *
 * Plugin home & Author URL:
 *   http://jquery-howto.blogspot.com
 *
 */
(function(d){d.extend({jYoutube:function(a,b){if(a===null)return"";b=b===null?"big":b;var c;c=a.match("[\\?&]v=([^&#]*)");a=c===null?a:c[1];return b=="small"?"http://img.youtube.com/vi/"+a+"/2.jpg":"http://img.youtube.com/vi/"+a+"/0.jpg"}})})(jQuery);


/**
 * jQuery Cookie plugin
 *
 * Copyright (c) 2010 Klaus Hartl (stilbuero.de)
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 */
jQuery.cookie = function (key, value, options) {
    
    // key and at least value given, set cookie...
    if (arguments.length > 1 && String(value) !== "[object Object]") {
        options = jQuery.extend({}, options);

        if (value === null || value === undefined) {
            options.expires = -1;
        }

        if (typeof options.expires === 'number') {
            var days = options.expires, t = options.expires = new Date();
            t.setDate(t.getDate() + days);
        }
        
        value = String(value);
        
        return (document.cookie = [
            encodeURIComponent(key), '=',
            options.raw ? value : encodeURIComponent(value),
            options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
            options.path ? '; path=' + options.path : '',
            options.domain ? '; domain=' + options.domain : '',
            options.secure ? '; secure' : ''
        ].join(''));
    }

    // key and possibly options given, get cookie...
    options = value || {};
    var result, decode = options.raw ? function (s) { return s; } : decodeURIComponent;
    return (result = new RegExp('(?:^|; )' + encodeURIComponent(key) + '=([^;]*)').exec(document.cookie)) ? decode(result[1]) : null;
};


//--=========================================================================== CHMURKI DLA KOMUNIKATOW flash[:notice]
	var cloud_count = -1;	//zlicza aktualną liczbę wyswietlanych chmurek - pomocnik przy ograniczaniu max liczby chmurek na raz wyświetlanych
	var cloud_id = -1;	//zapewnia unikatowe id chmurek
	var yOffset = 150;	//offset od dołu strony
	var width = 240;	//szerokość chmurek
	var height = 80;	//szerokość chmurek
	var padding = height+5;	//liczba px między górnymi krawędziami chmurek
	//var radius = 8; //miara zaokrąglenia rogów kamil edit: problemy w chrome
	function komunikat(tresc, nr_typu){
		var kind;
		cloud_count++;
		cloud_id++;

		if(tresc != undefined && nr_typu != undefined){
			switch(nr_typu){
				case 1:	className = "blad";		title = "Błąd!"; kind="cloudError";	//inne przypisania;
				break;
				case 2: className = "ostrzezenie"; title = "Ostrzeżenie!"; kind="cloudWarning"; //inne przypisania;
				break;
				default :	case 0 : 
				className = "informacja"; title = "Informacja!"; kind="cloudNotice";	//inne przypisania;
				break;
			}

			var bot = window.innerHeight + document.body.scrollTop
			var leftPercent = 100 - (width*100 / window.innerWidth) -1;

			// jakieś style zewnętrzne opisujące
			// przypisanie className z definicja klasy w css
			
			divHTML = "<div class='cloud "+kind+"' id='cloud"+cloud_id+"' style='width:"+width+"px;"+
			"px;height:"+height+"px;top:"+(bot+100)+"px;left:"+leftPercent+
			"%;'><div class='flashBar "+kind+"'>&nbsp;"+title+
			"<div style='float:right;cursor:pointer;'><a onClick=hideCloud('"+cloud_id+
			"')><b> &nbsp;X&nbsp;&nbsp;</b> </a></div></div><br/>&nbsp;"+tresc+"</div>";
			
			$j(divHTML).appendTo("body").animate({top: (bot-yOffset-(cloud_count*padding))+"px"}, {duration:2000,easing:'easeOutBounce'});
			
			
			//setTimeout('$j("#cloud'+cloud_id+'").remove()', 10000);
		}
	}
	
	var lastYOffset = window.pageYOffset;
	function scrollChmurki(){
		$j(".cloud").stop(true, true);
		//var easeMethod = (Math.abs(lastYOffset - window.pageYOffset) > 250) ? "easeInCirc" : "easeOutBounce"
		$j(".cloud").animate({top: "-="+(lastYOffset - window.pageYOffset)}, { duration: 500, easing: "easeOutBounce"});
		lastYOffset = window.pageYOffset;
	}
	var time_tmp = 0;
	function hideCloud(cloud_id, bot){
		cloud_count--;
		var topOfDeletedCloud = $j('#cloud'+cloud_id).css("top");
		$j('#cloud'+cloud_id).animate({opacity: 0},100,function(){
			$j(this).remove()
			$j('.cloud').each(function(){
				//alert("tu")
				if($j(this).css("top") < topOfDeletedCloud){
					time_tmp += Math.random()*500
					$j(this).animate({top: "+="+padding},{duration: time_tmp,easing:'easeOutBounce'});
				}
			})
			time_tmp = 0;
		})
	}
	
	window.onscroll = scrollChmurki;
	
	
	/* test działania
	$j(document).ready(function(){
		komunikat('tresc1', 2);
		komunikat('tresc2', 1);
		komunikat('tresc2', 1);
		komunikat("tresc3", 0);
		komunikat("tresc3", 0);
	});
	*/
//--=========================================================================== KONIEC CHMUREK DLA KOMUNIKATOW flash[:notice]