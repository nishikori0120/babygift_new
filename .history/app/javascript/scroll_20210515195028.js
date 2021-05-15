$(window).on('load scroll', function(){
  if ($(window).scrollTop() > 200) {
    $('.cegJMn').fadeIn(300);
   } else {
    $('.cegJMn').fadeOut(300);
   }

});


//   $(window).on('touchmove', function () {
//       var winTop = $(this).scrollTop();
//       if (winTop >= navTop) {
//           if (showFlag == false) {
//               showFlag = true;
//               nav
//                   .addClass('fixed')
//                   .stop().animate({'top' : '0px'}, 200);
//           }
//       } else if (winTop <= navTop) {
//           if (showFlag) {
//               showFlag = false;
//               nav.stop().animate({'top' : -navHeight+'px'}, 200, function(){
//                   nav.removeClass('fixed');
//               });
//           }
//       }
//   });

