$(window).on('load scroll', function(){
  if ($(window).scrollTop() > 100) {
    $('.cegJMn').fadeIn(200);
   } else {
    $('.cegJMn').fadeOut(300);
   }
});