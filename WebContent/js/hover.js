$(document).ready(function(){
    $("#num1").hover(function(){
        $(this).children(".submenu").stop().slidetoggle(500);
    });

});