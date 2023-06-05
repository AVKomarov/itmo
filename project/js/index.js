$(document).ready(function(){


$("[data-trigger='dropdown']").on("mouseenter",function(){
   var sup = $(this).parent().find(".supermenu");
   sup.addClass("active");

   $(".navbar-nav").on("mouseleave",function(){
    sup.removeClass("active");
   })

});


















// $('.board-messadge').on('click',function(){
//     alert('Пщ! Пщ! Пщ!');
// })

    // let a = document.querySelector('.русский сбил мой байрактар');
// function buttonClick(){
//     console.log('Кнопку прожали!!!');
// }
// a.addEventListener("click",buttonClick); 

//     alert('ВЖИК!');
// // document.querySelector('.board-messadge').innerHTML='Хоба!';
// $('.board-messadge').html('ХОП-ХОП-ХОБА!');

})