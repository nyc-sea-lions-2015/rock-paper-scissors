$(document).ready(function () {
    $(".player1 img").click(function(event) {
        console.log(event);
        $(".player2").show();
    });
});

