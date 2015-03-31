(function(loc, $) {
  var WAIT_TIME = 400;
  var dataHolder = {};
  // Only run on the /js route
  if (!loc.href.match(/js$/)) return;
  $(function() {
    $("#interface").show();
    $("#second").hide();
    $("#submit-button").hide();
    $("#first")
      .on('click', "input", function() {
        dataHolder.player_id = $(".user_names:first").val();
        dataHolder.token_id = $(this).val();
        $(this).parents("#first").hide();
        $("#second")
          .show('slow')
          .on('click', "input", function() {
            dataHolder.second_player = {};
            dataHolder.second_player.user_id = $(".user_names:last").val();
            dataHolder.second_player.token_id = $(this).val();
            $("#submit-button").show();
          });
      });
    $("form").on('submit', function(e) {
      e.preventDefault();
      $("#second").hide('slow');
      $("#submit-button").hide();
      $("body").append("Rock...");
      setTimeout(function() {
        $("body").append("Paper...");
        setTimeout(function() {
          $("body").append("Scissors...");
          setTimeout(function() {
            $("body").append("Shoot!");
              $.ajax('/record.json', {
                data: dataHolder,
                method: 'POST'
              })
              .then(function() {
                $.ajax('/games_history')
                  .then(function(data) {
                    $("body").append(data);
                  });
              });
          }, WAIT_TIME);
        }, WAIT_TIME)
      }, WAIT_TIME)
    });
  });
})(window.location, jQuery)
