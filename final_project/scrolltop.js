    $(document).ready(function() {
    $("#checkbtn").click(function() {
        $('html, body').animate({
            scrollTop: $("#movies").offset().top
        }, 500);
    });
    });
    
    window.onscroll = function() {scrollFunction()};


$(document).ready(function() {
    // Transition effect for navbar 
    $(window).scroll(function() {
      // checks if window is scrolled more than 500px, adds/removes solid class
      if($(this).scrollTop() > 500) { 
          $('.navbar').addClass('solid');
          $('#nav').css("padding", "0.2em");
      } else {
          $('.navbar').removeClass('solid');
      }
    });
});

$(document).ready(function(){
    $(".navbar-nav li a").click(function (event) {
        // check if window is small enough so dropdown is created
        var toggle = $(".navbar-toggle").is(":visible");
        if (toggle) {
          $("#navbar.navbar-collapse.collapse.in").collapse('hide');
        }
      });
    });

    $(document).ready(function(){
    $("#chihuo").hide(function() {
    });

    $("#wanka").hide(function() {
    });

    $("#wenqing").hide(function() {
    });

    $("#ch").click(function() {
        $("#wanka").hide();
        $("#wenqing").hide();
        $("#chihuo").toggle(500);
    })

    $("#wk").click(function() {
        $("#chihuo").hide();
        $("#wenqing").hide();
        $("#wanka").toggle(500);
    })

    $("#wq").click(function() {
        $("#chihuo").hide();
        $("#wanka").hide();
        $("#wenqing").toggle(500);
    })
});





