$(function() {

    /* Adding a link to the label of the checkbox. */
    $('label[for="privacy_policy"]').html('<a target="_blank" href="https://www.boe.es/buscar/doc.php?id=BOE-A-2018-16673">Acepto la política de privacidad.</a>')

    $('.cart_button, .cart_module').hover(function() {
        $('.cart_module').stop(true, true).delay(100).animate({top:'39px'}, 400);
      },
      function() {
        $('.cart_module').stop(true, true).animate({top: -cartHeight}, 250);
    });

    var skills = {
        ht: 90
      };
      
      $.each(skills, function(key, value) {
        var skillbar = $("." + key);
      
        skillbar.animate(
          {
            width: value + "%"
          },
          1000,
          function() {
            $(".speech-bubble").fadeIn();
          }
        );
      }); 



	var contentItems = $('.form-content').length;
    var contentPos = 1;

    $('.form-content').css('display', 'none');
    $('.form-content:first').css('display', 'flex');

    $('.btn').hover(function(){
        $(this).css('transform', 'scale(1.2)');
        $(this).css('transform', 'scale(1)');
    });


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
