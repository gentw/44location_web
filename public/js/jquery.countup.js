var a = 0;
$(window).scroll(function() {
    
    if ($(this).scrollTop() > 50) {
       $('.navigation_bar').addClass('auto_width');
    } else {
       $('.navigation_bar').removeClass('auto_width');
    }

  // var oTop = $('#counter').offset().top - window.innerHeight;
  // if (a == 0 && $(window).scrollTop() > oTop) {
  //   $('.counter-value').each(function() {
  //     var $this = $(this),
  //       countTo = $this.attr('data-count');
  //     $({
  //       countNum: $this.text()
  //     }).animate({
  //         countNum: countTo
  //       },

  //       {

  //         duration: 3000,
  //         easing: 'swing',
  //         step: function() {
  //           $this.text(Math.floor(this.countNum));
  //         },
  //         complete: function() {
  //           $this.text(this.countNum);
  //           //alert('finished');
  //         }

  //       });
  //   });
  //   a = 1;
  // }

});


$("#contactForm").submit(function(e) {

  var url = "/mailer.php"; // the script where you handle the form input
  
  $.ajax({
         type: "POST",
         url: url,
         data: $("#contactForm").serialize(), // serializes the form's elements.
         success: function(data)
         {
            $.notify(data, "success");
            document.getElementById("contactForm").reset();
         }
       });
  
  e.preventDefault(); // avoid to execute the actual submit of the form.
  });