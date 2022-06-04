$(function() {

    $('label[for="privacy_policy"]').html('<a target="_blank" href="https://www.boe.es/buscar/doc.php?id=BOE-A-2018-16673">Acepto la política de privacidad.</a>')

    $('.form-content').css('display', 'none');
    $('.form-content:first').css('display', 'flex');


    $('#next').on('click', function(){
        var currDiv = $('.form-content').attr('id')
        var nextDiv = $('.form-content').next().attr('id')
    
        console.log(currDiv)
        console.log(nextDiv)
        if($currDiv.hasClass('show')) {
            console.log('Heelloooo');
        }

        if($(currDiv).hasClass('show') && $(currDiv).not(':first-child') && $(currDiv).not(':last-child')){

            $(this).prop('disabled', false);
            $('#prev').prop('disabled', false);

            $(currDiv).removeClass('show');
            $(nextDiv).addClass('show');

            currDiv = nextDiv

        } else if($(currDiv).hasClass('show') && $(currDiv).is(':last-child')) {

            $(this).prop('disabled', true);
            $('#prev').prop('disabled', false);

            $(currDiv).removeClass('show');
            $(nextDiv).addClass('show');

            currDiv = nextDiv
        }
        
        // if($($('.tab').attr('href')) == $($('.form-content').attr('id'))){
        //     if($('.tab').hasClass('active-t') && $('.form-content').hasClass('show')){
        //         $('.tab').removeClass('active-t');
        //         $($('.form-content').attr('id')).removeClass('show');
        //     } else {
        //         $('.tab').addClass('active-t');
        //         $('.form-content').addClass('show');
        //     }
        // }

    });

    $('#prev').on('click', function(){
        var currDiv = $('.form-content').attr('id')
        var prevDiv = $('.form-content').prev().attr('id')

        if($('.form-content').is(':first-child')){
            $(this).prop('disabled', true);
        }
    });

    // $('.list-tabs').on('click', '.tab', function(e) {
    //     // En este caso, evita que se abran los links cuando se clique en ellos
    //     e.preventDefault();
    
    //     $('.tab').removeClass('active-t');
    //     $('.form-content').removeClass('show');
    
    //     $(this).addClass('active-t');
    //     $('.span').addClass('icon-checkmark');
    //     // Recoge el valor del href que es igual al id del contenido, y le añade la clase "show"
    //     $($(this).attr('href')).addClass('show');
    // });

});
