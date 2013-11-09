$('.carousel').carousel();
$('.links a').tooltip();

$('ul.nav').on('click', 'a', function(event) {
  var anchor = $(event.target).attr('href');
  var $div = $(anchor);
  var top = $div.position().top - 100;
  $('body').animate({scrollTop: top}, 500);
  event.preventDefault();
});
