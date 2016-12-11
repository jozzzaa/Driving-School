

// Click to view more
$(".read_more").on('click', function() {
  console.log('clicked');
  $('html, body').animate({scrollTop: $(".benefit").offset().top}, 1000);
});
