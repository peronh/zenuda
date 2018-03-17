
$(document).ready(function() {

    $('ul li').on('click', function(){
        $('ul li.active').removeClass('active');
        $(this).addClass('active');
    });

    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        responsive:{
            0:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            },
            1060:{
                items:3
            }
        }
	});

   $(".mobile-category-header, .mobile-search-link").on("click", function categoryNav() { 
        $("#categorytree-nav").css({"width": "300px", "transition":"width 500ms", "-webkit-transition":"width 500ms", "z-index":"3000"});
        $("body").css({"margin-left": "300px", "transition":"margin-left 500ms", "-webkit-transition":"margin-left 500ms", 
        "overflow":"hidden",  "width":"100%" , "position": "relative" , "z-index" : "3000"});
    });
    $(".mm-navbar").on("click",function() { 
        $("#categorytree-nav").css({"width": "0", "transition":"width 500ms", "-webkit-transition":"width 500ms", "z-index":"3000"});
        $("body").css({"margin-left": "0" , "overflow":"visible"});   
    });

    $(".mobile-content-header").on("click", function categoryNav() { 
        $("#menu-nav").css({"width": "300px", "transition":"width 500ms", "-webkit-transition":"width 500ms", "z-index":"4001"});
        $("body").css({"margin-left": "-300px", "transition":"margin-left 500ms", "-webkit-transition":"margin-left 500ms", 
        "overflow":"hidden",  "width":"100%" , "position": "relative" , "z-index" : "3001"});
    });
    $(".mm-navbar").on("click",function() { 
        $("#menu-nav").css({"width": "0", "transition":"width 500ms", "-webkit-transition":"width 500ms", "z-index":"3000"});
        $("body").css({"margin-right": "0" , "overflow":"visible"});   
    });

    $(document).on("scroll", function() {

        if($(document).scrollTop()>600) {
            $(".btntop").show(250);
        }
        else {
            $(".btntop").hide(250);
        }
    });

    $('.btntop').on("click", function() {

            $('html,body').animate( {
                scrollTop: 0
            }, 700);
        }
    );
});