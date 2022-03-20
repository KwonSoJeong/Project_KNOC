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
		
	$(".n0").click(function(){
	        $(this).hide();
	        $(".y0").show();
		});

    $(".y0").click(function(){
	        $(".n0").show();
	        $(this).hide();
		});	
		
	$(".n1").click(function(){
	        $(this).hide();
	        $(".y1").show();
		});

    $(".y1").click(function(){
	        $(".n1").show();
	        $(this).hide();
		});	
		
		
	$(".cc-fsfc1").click(function(){
	        $(".cc-index").fadeToggle(100);
		});
});