$(() => {
    console.log("SCRIPTS MENU CARGADOS");


    $(".menu-btn").click(()=> {
        if($(".menu-items").css("display") == "none") {
            $(".menu-items").css("display", "flex")
            .css('flex-grow', 'column wrap')
                            .css("animation", "menu-in 1.5s forwards")

            $(".menu-btn div").css("animation-name", "open-menu")
                                .css("animation-duration", "0.5s")
                                .css("animation-fill-mode", "forwards");

            $(".menu-items li a").css("opacity", "1");

            setTimeout(function() {
                $(".menu-btn").css("transform", "rotate(90deg)")
            }, 1);

        } else {
            $(".menu-items").css("animation-name", "menu-off")
                            .css("animation-fill-mode", "none");
            $(".menu-items li").css("animation", "fade-in 1.5s 1.2s forwards;");

            $(".menu-items li a").css("opacity", "0");

            setTimeout(function() {
                $(".menu-items").css("display", "none")
            }, 1500);

            $(".menu-btn div").css("animation-name", "close-menu")
                                .css("animation-duration", "0.5s")
                                .css("animation-fill-mode", "forwards");

            setTimeout(function() {
                $(".menu-btn").css("transform", "rotate(0deg)")
            }, 15);
        };
    });
});
