$(document).ready(function() {
//   // $('#player_2').load(function() {
//   //   /* Act on the event */
//   // });
  $('#player_2').toggle(false);

  $("input[type='radio'][name='player_1_token']").on('click', function(event) {
    $('#player_1').toggle(false);
    $('#player_2').toggle(true);
  });

  $("input[type='radio'][name='player_2_token']").on('click', function(event) {
    $('#player_2').toggle(false);
  });

});
