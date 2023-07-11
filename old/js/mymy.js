let a = document.querySelector('.flex-item.content.push1');
let b = document.querySelector('.flex-item.content.push2');
let c = document.querySelector('.flex-item.content.push3');
// let knopka = document.querySelector('.btn.btn-primary.openformaphp');
// function buttonClick(){
//     console.log('Кнопку прожали!!!');
// }

a.addEventListener("click",pricelist1);
b.addEventListener("click",pricelist2);
c.addEventListener("click",pricelist3);
// knopka.addEventListener("click",formaopenphp);

function pricelist1(){
    elem = document.querySelector('.wrapper.avto');
    blok = document.querySelector('.buttons-zakaz');
elem.classList.toggle('vid');
blok.classList.add('vid');
document.querySelector('.wrapper.tech').classList.remove('vid');
document.querySelector('.wrapper.travel').classList.remove('vid');
// document.querySelector('.buttons-zakaz').classList.remove('vid');
}
function pricelist2(){
    elem = document.querySelector('.wrapper.tech');
    blok = document.querySelector('.buttons-zakaz');
elem.classList.toggle('vid');
blok.classList.add('vid');
document.querySelector('.wrapper.avto').classList.remove('vid');
document.querySelector('.wrapper.travel').classList.remove('vid');
// document.querySelector('.buttons-zakaz').classList.remove('vid');
}
function pricelist3(){
    elem = document.querySelector('.wrapper.travel');
    blok = document.querySelector('.buttons-zakaz');
elem.classList.toggle('vid');
blok.classList.add('vid');
document.querySelector('.wrapper.tech').classList.remove('vid');
document.querySelector('.wrapper.avto').classList.remove('vid');
// document.querySelector('.buttons-zakaz').classList.remove('vid');
}
function formaopenphp(){
    elem = document.querySelector('.board-messadge.openformaphp');
    elem.classList.toggle('vid');
}
//открытие php-формы выбора заказа
// btn btn-primary