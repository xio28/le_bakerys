window.addEventListener("load", () => {
    console.log("Funciona")
});


$(window).scroll(() => {
    let icon = $(".account");

    if($(this).scrollTop() >= 102 && icon.css("position") == "absolute") {
        console.log("Funciona", $(window).scrollTop());
        icon.css("position", "fixed")
            .css("top", "92vh")
            .css("transition", "0.5s");
    } else if ($(this).scrollTop() < 102 && icon.css("position") == "fixed") {
        icon.css("position", "absolute")
        .css("top", "1rem")
        .css("transition", "0.5s");
    };

    if($(this).scrollTop() >= 1700) {
        $(".popular-products-h").css("opacity", "1");
    };

    if($(this).scrollTop() >= 1938) {
        $(".pp-card").css("opacity", "1");
    };

    if($(this).scrollTop() >= 1100) {
        $(".bubble:nth-child(3) img").addClass("moto-animation");
        $(".bubble:nth-child(1) img").addClass("phone-animation");
        $(".bubble:nth-child(2) img").addClass("clock-animation");
    };

    console.log($(window).scrollTop());

});


function scrollToSection() {
    $("html, body").animate({
        scrollTop: $('.about-us_section').position().top
    }, 801)
};


const switchSlide = () => {
    $(".slide1").click(() => {
        console.log("BTN1");

        $(".slide1").addClass("slide1 slide-active");
        $(".slide2").removeClass("slide-active");
        $(".slide3").removeClass("slide-active");

        $(".slider-item").css("right", "0");
    });

    $(".slide2").click(() => {
        console.log("BTN2");

        $(".slide1").removeClass("slide-active");
        $(".slide2").addClass("slide1 slide-active");
        $(".slide3").removeClass("slide-active");

        $(".slider-item").css("right", "100vw");
    });

    $(".slide3").click(() => {
        console.log("BTN3");

        $(".slide1").removeClass("slide-active");
        $(".slide2").removeClass("slide-active");
        $(".slide3").addClass("slide1 slide-active");
        $(".slider-item").css("right", "200vw");
    });
        
};

switchSlide();

$(".bgr-menu").click(() => {
    console.log("HEEEY")
    $(".bgr-menu").css("display", "block")
});
