$( document ).ready(function() {

  console.log( "ready!" );

  $('#p2').toggle(false);
  
  $('#p1').click(function(){
        $(this).toggle(false)
        $('#p2').toggle(true);
    });

    $('#p2').click(function(){
        $(this).toggle(false);
    });

});