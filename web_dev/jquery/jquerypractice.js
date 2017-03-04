// Note: I did not write the code directly below

$(".panel-link").on("click", function(e) {
    e.preventDefault();
    $(".panel-link").removeClass('active');
    var p=$(this).data('view-panel');
    $(".panel-content").hide();
    $("#panel-"+p).show();
  })

// I did write the code directly below this

$('.panel-link').hover(function(){
	$("h3", this).css("color", $(this).attr('id'));
},
function(){
	$("h3", this).css("color", "black");	
});

$('.panel-link').click(function(){
	$('.panel-link').children("h3").css("color", "black");
	$('.panel-link').children("h3").css("font-size", "19px");
	$("h3", this).css("color", $(this).attr('id'));
	$("h3", this).css("font-size", "21px");
});