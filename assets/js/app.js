$('.carousel').carousel();
$('ul.nav').on('click', 'a', function(event) {
  var $a = $(event.target);
  var anchor = $a.attr('href');
  var $div = $(anchor);
  var top = $div.position().top;

  top = ( anchor === '#about' ? top - 100 : top - 50 );

  $('body').animate({scrollTop: top}, 500);
  event.preventDefault()
});
