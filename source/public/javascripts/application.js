$( document ).ready(function(){
  console.log("ready!")
  $('#p2').toggle(false);

  $('#p1').on('change', function(){
    $('#p1').toggle(false);
    $('#p2').toggle(true);
  });



  $('#p2').on('change', function(event){

    $target = $(event.target);
    var round = {
          url: '/game',
          method: 'POST',
          data: $target.serialize()
    };
    // $('#game-form').submit();
    $.ajax(round).done(function(response){
      $('h1').toggle(false);
      $('#p2').toggle(false);
      $('#results').append(response);
    })
  });

});
