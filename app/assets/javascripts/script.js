$(function(){
    $('.slide').bxSlider({
        auto: true,
    });

    $(".ancla").on( "click" , function(){
        vinculo = $(this).attr("href")
        destino = $(vinculo).offset().top - 100;

        $("html:not(:animated), body:not(:animated)").animate({scrollTop:destino}, 800)
        return false
        
    })



    var fadeBegin = 0, 
    fadeFinish = 300, 
    fadingElement = $('.bio');

    window.onscroll = changePos;

    function changePos() {
        var offset = $(document).scrollTop(), opacity = 0; 
        //console.log(offset);
        if( offset <= fadeBegin ){
            opacity = 1;
            
        } else if( offset <= fadeFinish ){
            opacity = 1 - offset / fadeFinish;

        }
        fadingElement.css('opacity',opacity);




        var $header = $("header"),
            $logo   = $(".wenalogo");
        if (window.pageYOffset > 250) {

            $header.addClass("backgroundOscuro");
            $logo.css({
                "opacity": "1"
            });

        } else {
            $header.removeClass("backgroundOscuro");
            $logo.css({
                "opacity": "0"
            });
        }
        
    };
});
