$(function() {

    const label_classes =  ["g-row-1 g-col-2", "g-row-1 g-col-3", "g-row-4 g-col-1"]
    let num = 0

    $('label').each(function(){
        if (num < label_classes.length) {
            $(this).addClass(label_classes[num]);
            num++;
        }
    });

    var inputs = document.querySelectorAll('#file-reg');
	Array.prototype.forEach.call(inputs, function(input)
	{
		var label	 = input.nextElementSibling,
			labelVal = label.innerHTML;

		input.addEventListener('change', function(e)
		{
			var fileName = '';
			if(this.files && this.files.length > 1) {
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '').replace('{count}', this.files.length );
			} else {
				fileName = e.target.value.split('\\').pop();
			}

			if(fileName)
				label.querySelector('span').innerHTML = "Imagen cargada";
			else
				label.innerHTML = labelVal;
		});

		// Firefox bug fix
		input.addEventListener('focus', function(){ input.classList.add('has-focus'); });
		input.addEventListener('blur', function(){ input.classList.remove('has-focus'); });
	});


});

