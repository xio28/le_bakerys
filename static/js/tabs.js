$(function() {

    $('.list-tabs').on('click', '.tab', function(e) {
        // En este caso, evita que se abran los links cuando se clique en ellos
        e.preventDefault();
    
        $('.tab').removeClass('active-t');
        $('.span').removeClass('icon-checkmark');
        $('.form-content').removeClass('show');
    
        $(this).addClass('active-t');
        $('.span').addClass('icon-checkmark');
        // Recoge el valor del href que es igual al id del contenido, y le añade la clase "show"
        $($(this).attr('href')).addClass('show');
    });

});
