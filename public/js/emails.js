// About The Appointment/ Navigationbar
$("#appointment_rilind").submit(function (e) {

    var url = " /appointment.php"; // the script where you handle the form input

    $.ajax({
        type: "POST",
        url: url,
        data: $("#appointment_rilind").serialize(), // serializes the form's elements.
        success: function (data) {
            $.notify(data, "success");
            document.getElementById("appointment_rilind").reset();
        }
    });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});



// About the Require
$("#require_rilind").submit(function (e) {

    var url = " /request.php"; // the script where you handle the form input

    $.ajax({
        type: "POST",
        url: url,
        data: $("#require_rilind").serialize(), // serializes the form's elements.
        success: function (data) {
            $.notify(data, "success");
            document.getElementById("require_rilind").reset();
        }
    });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


// About Gent In Touch
$("#get_rilind").submit(function (e) {

    var url = " /get_in_touch.php"; // the script where you handle the form input

    $.ajax({
        type: "POST",
        url: url,
        data: $("#get_rilind").serialize(), // serializes the form's elements.
        success: function (data) {
            $.notify(data, "success");
            document.getElementById("get_rilind").reset();
        }
    });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});


// About Gent In Touch
$("#inner_rilind").submit(function (e) {

    var url = " /innerpage.php"; // the script where you handle the form input

    $.ajax({
        type: "POST",
        url: url,
        data: $("#inner_rilind").serialize(), // serializes the form's elements.
        success: function (data) {
            $.notify(data, "success");
            document.getElementById("inner_rilind").reset();
        }
    });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});