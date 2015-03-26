$(document).ready(function(){

  $('#player1-container').on('change', function(event){
    $('#player1-container').toggle(false);
    $('#player2-container').toggle(true);
  });

  $('#player2-container').on('change', function(event){
    // $('#MyGame').submit();

    // $target = $(event.target)
    $.ajax({  url: '/game', //$target.attr('action'),
              method: 'post', //$target.attr('method'),
              data: $('#MyGame').serialize()
            }).done(function(response){
              $('#header').toggle(false)
              $('#player2-container').toggle(false);
              $(".success").append(response)
            });
  });
});
