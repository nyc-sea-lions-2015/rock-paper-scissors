$(document).ready(function(){

  $("input[name='player1']").on('change', function(){
    $('#player1-container').toggle(false);
    $('#player2-container').toggle(true);
  });

  $("input[name='player2']").on('change', function(){
    // $('#MyGame').submit();

    $target = $(event.target)
    $.ajax({  url: $target.attr('action'),
              method: 'post', //$target.attr('method'),
              data: $target.serialize()
            }).done(function(response){
              $('#header').toggle(false);
              $('#player2-container').toggle(false);
              $(".success").append(response)
            });
  });
});
