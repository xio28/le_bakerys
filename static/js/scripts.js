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

    console.log($(window).scrollTop());

});


function scrollToSection() {
    $("html, body").animate({
        scrollTop: $('.about-us').position().top
    }, 801)
};


$(".polygon-item").hover(() => {
    console.log("HEEEY")
});
