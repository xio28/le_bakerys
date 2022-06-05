$(function() {

    /* Adding a link to the label of the checkbox. */
    $('label[for="privacy_policy"]').html('<a target="_blank" href="https://www.boe.es/buscar/doc.php?id=BOE-A-2018-16673">Acepto la política de privacidad.</a>')

	var contentItems = $('.form-content').length;
    var contentPos = 1;

    $('.form-content').css('display', 'none');
    $('.form-content:first').css('display', 'flex');


    $('#next').on('click', function(){

        if( contentPos >= contentItems - 1){

            contentPos = contentItems;
            $(this).css({
                        'opacity': '0.4', 
                        'pointer-events': 'none'
                    });
        } else {
            contentPos++;
            $(this).css({
                        'opacity': '1',
                        'pointer-events': 'auto'
                    });
            $('#prev').css({
                'opacity': '1',
                'pointer-events': 'auto'
            });
        }

		// $('.pagination li').css({'color': '#858585'});
		// $('.pagination li:nth-child(' + imgPos +')').css({'color': '#CD6E2E'});

		$('.form-content').css('display', 'none');
		$('.form-content:nth-child('+ contentPos +')').css('display', 'flex');
        
    });

    $('#prev').on('click', function(){

        if( contentPos <= 2){
            contentPos = 1;
            $(this).css({
                'opacity': '0.4', 
                'pointer-events': 'none'
            });
        } else {
            contentPos--;
            $(this).css({
                        'opacity': '1',
                        'pointer-events': 'auto'
                    });
            $('#next').css({
                        'opacity': '1',
                        'pointer-events': 'auto'
                    });
        }

		$('.form-content').css('display', 'none');
		$('.form-content:nth-child('+ contentPos +')').css('display', 'flex');

    });

});
