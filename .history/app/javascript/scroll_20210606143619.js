$(window).on('load scroll', function(){
  if ($(window).scrollTop() > 200) {
    $('.cegJMn').fadeIn(300);
   } else {
    $('.cegJMn').fadeOut(300);
   }
});