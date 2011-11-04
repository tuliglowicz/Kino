// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

if (top.frames.length!=0) top.location=self.document.location;

$j(document).ready(function(){
	$j("a.youtube_trailer").live("click", centeredMovie);	
})

jQuery.fn.myHide = function(interval){
	if(interval == undefined)
		this.style.display = 'none';
	else
		jQuery(this).animate({opacity: 0}, interval, function(){ this.style.display = 'none'}).css("opacity", 1)
}
jQuery.fn.myShow = function(interval){						
	if(interval == undefined)
		this.style.display = 'inherit';
	else
		jQuery(this).css("opacity", 0).show().animate({opacity: 1}, interval);
}

function centeredMovie(){
	$j("<div id='movieTrailer'></div>").appendTo("body");
	var v = this.href.substring(31,42);
	var topCoord = Math.round((window.innerHeight - 335)/2);
	var leftCoord = Math.round((window.innerWidth - 560)/2);
	//alert(topCoord+":"+leftCoord);
	
	$j("#movieTrailer").attr("style", "text-align:right;position:fixed;top:0px;left:0px;width:100%;height:100%;background-color:black;opacity:0.8;z-index:999;display:block;").html('<embed src="http://www.youtube.com/v/'+v+'?version=3&amp;hl=pl_PL" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true" style="position:fixed;top:'+topCoord+'px;left:'+leftCoord+'px;"></embed><br><span style="background-color:black;opacity:1;font-size:18px;text-align:right">Kliknij w tło strony, aby zamknąć film.</style>').click(function(){
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