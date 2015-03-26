$(document).ready(function(){

  $('#player_2_input').toggle(false);

  $('#player_1_input').click(function(){
    $('#player_1_input').toggle(false);
    $('#player_2_input').toggle(true);
  });

  $('#player_2_input').click(function(){
    $('#player_2_input').toggle(false);
  });

});

 // $('#player_1_input').toggle(true);
