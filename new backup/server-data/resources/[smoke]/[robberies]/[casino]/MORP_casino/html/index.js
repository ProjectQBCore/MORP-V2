$(function() {
    window.addEventListener('message', function(event) {
        if (event.data.type === "menuopen") {

            $("#shopname").fadeIn(311);
            $('#log').slideDown(311);

            setTimeout(function() {
                $('#log').slideUp(311);

                $.post('https://MORP_casino/login', JSON.stringify({}));
                $('#log2').fadeIn(311);
            }, 900)



        } else if (event.data.type === "login") {


            setTimeout(function() {
                $('#log3').fadeIn(311);
                $('#log4').fadeIn(311);

            }, 200)


        } else if (event.data.type === "part1") {
            $("#start").hide();
            $('#startdone').fadeIn(311);


        } else if (event.data.type === "part2") {
            $("#start1").hide();
            $('#startdone1').fadeIn(311);




        } else if (event.data.type === "fail") {
            $('#startdone').hide(311);
            $("#start").show();



        } else if (event.data.type === "fail1") {
            $('#startdone1').hide(311);
            $("#start1").show();



        } else if (event.data.type === "heiststart") {
            $('#startmission').fadeIn(311);
            $('#bigday').fadeIn(311);




        } else if (event.data.type === "fail2") {
            $('#startmission').hide(311);
            $('#bigday').hide(311);





        } else if (event.data.type === "error") {
            $("#errorlog").slideDown(300);

            setTimeout(function() {
                $("#errorlog").fadeOut(300);
            }, 900)


        } else if (event.data.type === "result") {
            if (event.data.t == "success")
                $("#result").attr('class', 'alert-green');
            else
                $("#result").attr('class', 'alert-orange');
            $("#result").html(event.data.m).show().delay(5000).fadeOut();
        }
    });
});



$("#start").click(function() {
    $('#log, #ex1, #startdone, #startdone1, #log2, #backok-content, #shopname, #backok2-content, #backok3-content, #backok4-content, #backok5-content, #backok6-content, #backok7-content, #backok8-content, #log3, #log4, #log5, #log6, #log7, #log8, #backlol, #buylol, #back2lol, #buy2lol, #back3lol, #buy3lol, #back4lol, #buy4lol, #back5lol, #buy5lol, #back6lol, #buy6lol, #back7lol, #buy7lol, #back8lol, #buy8lol').fadeOut(399);
    $.post('https://MORP_casino/NUIFocusOff', JSON.stringify({}));
    $.post('https://MORP_casino/setup1', JSON.stringify({}));


})

$("#start1").click(function() {
    $('#log, #ex1, #startdone, #startdone1, #log2, #backok-content, #shopname, #backok2-content, #backok3-content, #backok4-content, #backok5-content, #backok6-content, #backok7-content, #backok8-content, #log3, #log4, #log5, #log6, #log7, #log8, #backlol, #buylol, #back2lol, #buy2lol, #back3lol, #buy3lol, #back4lol, #buy4lol, #back5lol, #buy5lol, #back6lol, #buy6lol, #back7lol, #buy7lol, #back8lol, #buy8lol').fadeOut(399);
    $.post('https://MORP_casino/NUIFocusOff', JSON.stringify({}));
    $.post('https://MORP_casino/setup2', JSON.stringify({}));


})

$("#startmission").click(function() {

    $('#log, #ex1, #startdone, #startdone1, #log2, #backok-content, #shopname, #backok2-content, #backok3-content, #backok4-content, #backok5-content, #backok6-content, #backok7-content, #backok8-content, #log3, #log4, #log5, #log6, #log7, #log8, #backlol, #buylol, #back2lol, #buy2lol, #back3lol, #buy3lol, #back4lol, #buy4lol, #back5lol, #buy5lol, #back6lol, #buy6lol, #back7lol, #buy7lol, #back8lol, #buy8lol').fadeOut(399);
    $.post('https://MORP_casino/NUIFocusOff', JSON.stringify({}));
    $.post('https://MORP_casino/starthiest', JSON.stringify({}));



})






document.onkeyup = function(data) {
    if (data.which == 27) {
        $('#log, #ex1, #startdone, #startdone1, #log2, #backok-content, #shopname, #backok2-content, #backok3-content, #backok4-content, #backok5-content, #backok6-content, #backok7-content, #backok8-content, #log3, #log4, #log5, #log6, #log7, #log8, #backlol, #buylol, #back2lol, #buy2lol, #back3lol, #buy3lol, #back4lol, #buy4lol, #back5lol, #buy5lol, #back6lol, #buy6lol, #back7lol, #buy7lol, #back8lol, #buy8lol').fadeOut(399);
        $.post('https://MORP_casino/NUIFocusOff', JSON.stringify({}));
    }
}