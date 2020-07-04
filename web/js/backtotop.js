var btn = $('#button');

$(window).scroll(function() {
  if ($(window).scrollTop() > 300) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});

btn.on('click', function(e) {
  e.preventDefault();
  $('html, body').animate({scrollTop:0}, '300');
});

// Validar Formulario
$(document).ready(function() {

	$('#pass2').keyup(function() {

		var pass1 = $('#pass1').val();
		var pass2 = $('#pass2').val();

		if ( pass1 == pass2 ) {
            $('#error2').css("background", "url(images/check.png)");
            
		} else {
            $('#error2').css("background", "url(images/check-.png)");
		}

	});

});