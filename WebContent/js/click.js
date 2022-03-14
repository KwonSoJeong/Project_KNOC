$(document).ready(function(){
    $(".no").click(function(){
	        $(this).hide();
	        $(".ya1").fadeIn();
	        $(".no2").show();
		});

    $(".no2").click(function(){
	        $(".no").show();
	        $(".ya1").hide();
	        $(this).hide();
		});
		
	$(".cc-fsfc1").click(function(){
	        $(".cc-index").fadeToggle(100);
		});
});