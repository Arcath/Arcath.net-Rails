$(document).ready(function(){
	var old
	$('#userbar .activity').click(function(){
		if($('#userbarmenu').css("display") == "none"){
			$('#userbarmenu').css("display","block");
		}else{
			$('#userbarmenu').css("display","none");
		}
	});
	$('#loginlink').live("click",function(){
		$.getScript('/users/sign_in');
		$('#overlay').fadeIn("slow");
		$('#infobox').show("slow");
		return false
	});
	$('#overlay').live("click",function(){
		$('#infobox').css("display","none");
		$(this).fadeOut("slow");
	});
	$('#infoboxclose').live("click",function(){
		$('#infobox').hide("slow");
		$('#overlay').css("display","none");
	});
	$('#navigation a').mouseenter(function(){
		old = $(this).html();
		$(this).html(old + "<span class=\"blue\"><br />" + old + "</span><span class=\"green\"><br />" + old + "</span>");
		
	});
	$('#navigation a').mouseleave(function(){
		$(this).html(old);
	});
	window.setTimeout(function() {
		$('#flash').slideUp("slow")
	}, 3000);
	$('#tagcloudul').tagcloud({height:150,colormin:"8EB200",colormax:"84A5DA"});
	$('.pagination a').live("click",function(){
		$('#pagination').html("Page is loading...");
		$.getScript(this.href);
		return false
	});
	$.fragmentChange(true);
	$(document).bind("fragmentChange.page", function(){
		$.getScript($.queryString(document.location.href, { "page" : $.fragment().page }));
	});
	if ($.fragment().page) {
		$(document).trigger("fragmentChange.page");
	}
});
