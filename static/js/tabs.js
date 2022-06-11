$(function() {

    const label_classes =  ["g-row-1 g-col-2", "g-row-1 g-col-3", "g-row-4 g-col-1"]
    let num = 0

    $('label').each(function(){
        if (num < label_classes.length) {
            $(this).addClass(label_classes[num]);
            num++;
        }
    });

});
