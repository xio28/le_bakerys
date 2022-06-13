$(() => {
    
    function toggleMenu(){
        let nav = $('.nav-panel');
        let span = $('.title');
        let content = $('.content-panel');
        nav.toggleClass('active');
        span.toggleClass('hidden');
        content.toggleClass('active');
    }

    function changeStatus(){
        let statusTD = $('.status-td');
        let statusSpan = $('.status-span');
        let thumb = $('.i-thumb');
        let color = $('.i-thumb');
        
        if (statusSpan.text() == 'Sin preparar'){
            statusTD.addClass('prepared');
            statusSpan.text('Preparado');
            thumb.removeClass('fa-thumbs-up');
            thumb.addClass('fa-thumbs-down');
            color.addClass('thumb-red');
        } else {
            statusTD.removeClass('prepared');
            statusSpan.text('Sin preparar');
            thumb.removeClass('fa-thumbs-down');
            thumb.addClass('fa-thumbs-up');
            color.removeClass('thumb-red');
        }
    }

    $('.nav-button-section').on('click', function(e){
        e.preventDefault();

        $(".boxes").removeClass("show");
        $($(this).attr('href')).addClass("show");	
    });

});
