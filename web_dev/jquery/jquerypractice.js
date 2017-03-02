console.log("It's connected!");

$(".panel-link").on("click", function(e) {
    e.preventDefault();
    $(".panel-link").removeClass('active');
    var p=$(this).data('view-panel');
    $(".panel-content").hide();
    $("#panel-"+p).show();
  })

$('.panel-link').click(function(){
	$(this).hide(500).delay(300).show(800);
});


