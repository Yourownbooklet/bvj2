import "bootstrap";
import { toggleSelection } from "./pagefocus";
console.log('hello from test2.js');

// const p1 = document.getElementById('p1');
// p1.addEventListener("click", swits(p1));

// const p2 = document.getElementById('p2');
// p2.addEventListener("click", swits(p2));


// function swits(p) {
//   return function()
//   {
//     toggleSelection(p);
//   }
// }


const buttontest = document.getElementById("testbutton");
buttontest.addEventListener("click", doThis);

const buttontest2 = document.getElementById("testbutton2");
buttontest2.addEventListener("click", doTheOther);

function doThis() {
  buttontest.addEventListener('focusout', remove);
  buttontest.style.color = 'red';
}

function doTheOther() {
  // buttontest.addEventListener('focusout', remove);
  buttontest.style.color = 'black';
}

function remove() {
  console.log('clicked outside!');
  buttontest.removeEventListener('focusout', remove);
  buttontest.style.color = 'black';
}

$(".carousel").on("touchstart", function(event){
        var xClick = event.originalEvent.touches[0].pageX;
    $(this).one("touchmove", function(event){
        var xMove = event.originalEvent.touches[0].pageX;
        if( Math.floor(xClick - xMove) > 5 ){
            $(this).carousel('next');
        }
        else if( Math.floor(xClick - xMove) < -5 ){
            $(this).carousel('prev');
        }
    });
    $(".carousel").on("touchend", function(){
            $(this).off("touchmove");
    });
});
