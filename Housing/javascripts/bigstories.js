var timer;
var last_video_resized = 0;
var videoAutoPlayTimeout = 1;

$(document).ready(function () {

    $.browser.device = (/android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase()));

    if ($.browser.device) {
        $('body').addClass('mobile-browser');
    }

    if ($.cookie("dbwarning5") == undefined || $.cookie("dbwarning5") == null) {
        $('#warning').fadeIn(1000, function () {
            $('#warning').click(function () {
                $('#warning').fadeOut(1000);
                $.cookie("dbwarning5", 'hidden', 7);
            });
            setTimeout(function () {
                $('#warning').fadeOut(1000);
                $.cookie("dbwarning5", 'hidden', 7);
            }, 5000);
        });
    }

    $('.anchor').click(function () {
        $(document).scrollTo($('#content'), 1000);
        return false;
    });

    $('a.about-anchor').click(function () {
        $(document).scrollTo($(this).attr('href'), 1000);
        return false;
    });

    $('.toggle-menu').click(function () {
        $('.menu').toggleClass('open-menu');
    });

    $('.toggle-dock').click(function () {
        $('.dock').toggleClass('close-dock');

        if ($(".media-controls").length > 0) {
            $('.media-controls').toggleClass('bottom');
        };

    });

    $("nav ul").accessibleDropDown();

    $('.x-menu').click(function () {
        $(this).parent().parent().parent().removeClass('hover');
    })

    $('.slideshow').anythingSlider({
        mode: "horiz",   // Set mode to "horizontal", "vertical" or "fade" (only first letter needed); replaces vertical option
        expand: true,     // If true, the entire slider will expand to fit the parent element
        resizeContents: false,      // If true, solitary images/objects in the panel will expand to fit the viewport
        easing: "swing",   // Anything other than "linear" or "swing" requires the easing plugin or jQuery UI
        buildArrows: true,      // If true, builds the forwards and backwards buttons
        buildNavigation: false,      // If true, builds a list of anchor links to link to each panel
        buildStartStop: true,      // If true, builds the start/stop button and adds slideshow functionality

        appendForwardTo: null,      // Append forward arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null
        appendBackTo: null,      // Append back arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null
        appendControlsTo: null,      // Append controls (navigation + start-stop) to a HTML element (jQuery Object, selector or HTMLNode), if not null
        appendNavigationTo: null,      // Append navigation buttons to a HTML element (jQuery Object, selector or HTMLNode), if not null
        appendStartStopTo: $('.controls'),      // Append start-stop button to a HTML element (jQuery Object, selector or HTMLNode), if not null

        hashTags: false,      // Should links change the hashtag in the URL?

        pauseOnHover: true,      // If true & the slideshow is active, the slideshow will pause on hover
        stopAtEnd: true,     // If true & the slideshow is active, the slideshow will stop on the last page. This also stops the rewind effect when infiniteSlides is false.

        delay: 3000,      // How long between slideshow transitions in AutoPlay mode (in milliseconds)
        resumeDelay: 15000,     // Resume slideshow after user interaction, only if autoplayLocked is true (in milliseconds).
        animationTime: 1000,       // How long the slideshow transition takes (in milliseconds)
        delayBeforeAnimate: 0,         // How long to pause slide animation before going to the desired slide (used if you want your "out" FX to show).
        onShowStart: function (event, slider) {
            $('.dock').addClass('close-dock');
            console.log('show started');
        },
        onShowStop: function (event, slider) {
            $('.dock').removeClass('close-dock');
            console.log('show finished');
        },
        onInitialized: function (e, slider) {
            setupSwipe(slider);
        }
    });

    $('.x-menu').click(function () {
        $(this).parent('.menu-section').removeClass('hover');
    });

    $(".thumbnails .thumbnail a").click(function (e) {
        var target = $(this).attr('rel');
        $('.slideshow').anythingSlider(target);
        e.preventDefault();
    });

    var animating = false;

    $('.next').click(function () {
        var carouselWidth = $('.thumbnails').outerWidth();
        var screenWidth = $('.dock').outerWidth();
        var currentPosition = parseInt($('.thumbnails').css('margin-left').replace('px', ''));
        if (carouselWidth + currentPosition >= screenWidth && !animating) {
            animating = true;
            $('.thumbnails').animate({
                marginLeft: '-=158px'
            }, function () {
                animating = false;
            });
        }
    })

    $('.previous').click(function () {
        var carouselWidth = $('.thumbnails').outerWidth();
        var screenWidth = $('.dock').outerWidth();
        var currentPosition = parseInt($('.thumbnails').css('margin-left').replace('px', ''));
        if (currentPosition < 0 && !animating) {
            animating = true;
            $('.thumbnails').animate({
                marginLeft: '+=158px'
            }, function () {
                animating = false;
            });
        }
    })

});

function setup_video_player() {

    $('.media-player').each(function () {
        $(this).height($(window).height());
        $(this).width($(window).width());
    });

    $('.media-player').jmeControl(
      {
          volumeSlider: {
              range: 'min'
          },
          timeSlider: {
              range: 'min'
          }
      }
    );

    $('video').bind('playing', function () {
        resizeElements();
        $('.media-player video').css("display", "block");
        $('.background').hide();
        $('.media-controls').addClass('bottom');
        fadeControls();
        $('.watermark').fadeOut('500');
        $('.dock').addClass('close-dock');
    });

    $('video').bind('pause', function () {
        $('.media-controls').removeClass('bottom');
        $('.watermark').fadeIn('500');
        returnControls();
        $('.dock').removeClass('close-dock');
    });

    $('video').bind('ended', function () {
        console.log("video ended")
        if (!$(".media-player").hasClass("playing")) {
            console.log("showing recomendations")
            returnControls();
            $("#recomendations").show();
        }
    });

    var videoAutoPlayTimer = setInterval(function () {
        if (videoAutoPlayTimeout > 5) {
            videoAutoPlayTimeout = 1;
            clearInterval(videoAutoPlayTimer);
            $(".media-player video").play();
        } else {
            videoAutoPlayTimeout++;
        }
    }, 1000);

    $(window).resize(function () {
        resizeElements();
    });

}

var seconds = 0;
function fadeControls() {
    $(document).mousemove(function () {
        seconds = 0;
        $('.media-controls').fadeIn(500);
    });
    timer = setInterval(fadeTimer, 1000)
}

function returnControls() {
    clearInterval(timer);
    $('.media-controls').fadeIn(500);
}

function fadeTimer() {
    console.log('checking: ' + seconds);
    seconds++;
    if (seconds == 5) {
        $('.media-controls').fadeOut(1000);
    }
}


function resizeElements() {
    resizeElementToFitWindow($('.video'));
    resizeElementToFitWindow($('.media-player'));
    resizeElementToWindow($('video'));
}

function resizeElementToFitWindow(element) {
    windowWidth = $(window).width();
    windowHeight = $(window).height();
    element.height(windowHeight);
    element.width(windowWidth);
}

function resizeElementToWindow(element) {

    windowWidth = $(window).width();
    windowHeight = $(window).height();

    videoWidth = 1280;
    videoHeight = 720;

    videoRatio = videoWidth / videoHeight;
    windowRatio = windowWidth / windowHeight;

    if (videoRatio < windowRatio) {
        resizedWidth = windowWidth;
        resizedHeight = windowWidth / videoRatio;
        marginTop = (windowHeight - resizedHeight) / 2

        element.width(resizedWidth);
        element.height(resizedHeight);
        element.css("margin-top", marginTop + "px");
        element.css("margin-left", "0px");
    } else {
        resizedHeight = windowHeight;
        resizedWidth = windowHeight * videoRatio;
        marginLeft = (windowWidth - resizedWidth) / 2

        element.width(resizedWidth);
        element.height(resizedHeight);
        element.css("margin-left", marginLeft + "px");
        element.css("margin-top", "0px");
    };

}

$.fn.accessibleDropDown = function () {
    var el = $(document);

    /* Setup dropdown menus for IE 6 */

    if ($.browser.device) {
        $("a").hoverIntent({
            over: function () {
                $(this).parent().addClass("hover");
            },
            out: function () {
                $(this).parent().removeClass("hover");
            },
            timeout: 350
        });
    } else {
        $("li").hoverIntent({
            over: function () {
                $(this).addClass("hover");
            },
            out: function () {
                $(this).removeClass("hover");
            },
            timeout: 350
        });
    }

    /* Make dropdown menus keyboard accessible */

    $("a", el).focus(function () {
        $(this).parents("li").addClass("hover");
    }).blur(function () {
        $(this).parents("li").removeClass("hover");
    });
}


var setupSwipe = function (slider) {
    var time = 1000,
        // allow movement if < 1000 ms (1 sec)
        range = 50,
        // swipe movement of 50 pixels triggers the slider
        x = 0,
        t = 0,
        touch = "ontouchend" in document,
        st = (touch) ? 'touchstart' : 'mousedown',
        mv = (touch) ? 'touchmove' : 'mousemove',
        en = (touch) ? 'touchend' : 'mouseup';

    slider.$window.add(slider.$controls)
        .bind(st, function (e) {
            // prevent image drag (Firefox)
            e.preventDefault();
            t = (new Date()).getTime();
            x = e.originalEvent.touches ? e.originalEvent.touches[0].pageX : e.pageX;
        })
        .bind(en, function (e) {
            t = 0;
            x = 0;
        })
        .bind(mv, function (e) {
            e.preventDefault();
            var newx = e.originalEvent.touches ? e.originalEvent.touches[0].pageX : e.pageX,
                r = (x === 0) ? 0 : Math.abs(newx - x),
                // allow if movement < 1 sec
                ct = (new Date()).getTime();
            if (t !== 0 && ct - t < time && r > range) {
                if (newx < x) {
                    if ($(this).hasClass('anythingControls')) {
                        slider.$controls.find('.next').trigger('click');
                    } else {
                        slider.goForward();
                    }
                    return false;
                }
                if (newx > x) {
                    if ($(this).hasClass('anythingControls')) {
                        slider.$controls.find('.prev').trigger('click');
                    } else {
                        slider.goBack();
                    }
                }
                t = 0;
                x = 0;
                return false;
            }
        });
};