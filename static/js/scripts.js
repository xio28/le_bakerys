window.addEventListener("load", () => {
    console.log("Funciona")
});

/* if ($(this).scrollTop() > (pos.top + 10) && fixadent.css('position') == 'static') {
    fixadent.addClass('fixed');
} else {
if ($(this).scrollTop() <= pos.top && fixadent.hasClass('fixed')) { 
fixadent.removeClass('fixed');
} */

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
        .css("transition", "0.5s")
   };

});