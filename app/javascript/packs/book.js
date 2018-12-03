import "bootstrap";
// import { toggleSelection } from "./pagefocus";
import { switchFocus } from "./pagefocus";
import { toggleCarouselControl } from "./components/togglecarrouselcontrol";
console.log('hello from book.js');

const images1_ids = document.getElementById("images1_ids").value;
const images2_ids = document.getElementById("images2_ids").value;
const imagecategory_ids = document.getElementById("imagecategory_ids").value;
const array_of_all_image_ids = document.getElementById("array_of_all_image_ids").value;
var imageArray = JSON.parse(array_of_all_image_ids);
var imagecategoryArray = JSON.parse(imagecategory_ids);
console.log(imagecategoryArray[2][1]);

function addSwitchFocus(pp) {
  return function() {
    switchFocus(pp);
  }
 }
// activate toggleselection an all pages
// i < number of pages (=== pagetemplates * 2)
var pages = [];
for (var i = 0; i < 9; ++i) {
    pages[i] = document.getElementById(`p${[i]}`);
    if (pages[i]) {
    pages[i].addEventListener("click", addSwitchFocus(pages[i]));
  }
}

// toggle imglist square on pagenumber (3)
$('#spreadCarousel').on('slide.bs.carousel', function (event) {
  console.log(event.direction);
  console.log(event.relatedTarget.id);
  console.log(event.relatedTarget.id[4]);
  // console.log(event.relatedTarget.firstElementChild.firstElementChild);

  const pp = event.relatedTarget.firstElementChild.firstElementChild;
  console.log(pp.id);
  switchFocus(pp);
  toggleCarouselControl(pp);
  // if ( event.direction === "left") {
  //   const pp = event.relatedTarget.firstElementChild.firstElementChild;
  //   console.log(pp.id);
  //   switchFocus(pp);
  // } else {
  //   const pp = event.relatedTarget.firstElementChild.firstElementChild;
  //   console.log(pp.id);
  //   switchFocus(pp);
  // }
})

var catmarkers = [];
for (var i = 0; i < imagecategoryArray.length; ++i) {
    catmarkers[i] = document.getElementById(`imagecategory_${imagecategoryArray[i][1]}`);
    console.log(catmarkers[i]);
    // if empty: skip
    if (catmarkers[i]) {
    catmarkers[i].addEventListener("click", toggleKat(i));
  }
}

function toggleKat(i) {
  return function() {
  var e, elements = document.getElementsByClassName(`cat${imagecategoryArray[i][0]}`);
  for ( e = 0; e < elements.length; e += 1) {
    console.log(elements[e]);
    if (elements[e].style.display === 'none') {
      elements[e].style.display = 'inline';
      // get catmarkers[i] child with class sel and change innerHTML to 9711
      catmarkers[i].children[0].innerHTML = ' &#9673;';
      catmarkers[i].children[0].style.color = '#FFCC33';
      catmarkers[i].style.backgroundColor = '#f2f2f2';
      catmarkers[i].onmouseover = function() {
        this.style.backgroundColor = 'rgba(0, 0, 0, 0.05)';
      }
      catmarkers[i].onmouseout = function() {
        this.style.backgroundColor = '#f2f2f2';
      }
    } else {
      elements[e].style.display = 'none';
      // get catmarkers[i] child with class sel and change innerHTML to 9673
      catmarkers[i].children[0].innerHTML = ' &#9711;';
      catmarkers[i].children[0].style.color = 'rgba(0,0,0,0.5)';
      catmarkers[i].style.backgroundColor = 'rgba(0, 0, 0, 0.05)';
      catmarkers[i].onmouseover = function() {
        this.style.backgroundColor = 'rgba(0, 0, 0, 0.1)';
        }
        catmarkers[i].onmouseout = function() {
          this.style.backgroundColor = 'rgba(0, 0, 0, 0.05)';
        }
      }
    }
  }
}

// const cat3button = document.getElementById(`imagecategory_${imagecategoryArray[2][1]}`);
// console.log(`imagecategory_${imagecategoryArray[2][1]}`);
// cat3button.addEventListener("click", toggleCat);

// function toggleCat() {
//   var i, elements = document.getElementsByClassName(`cat${imagecategoryArray[2][0]}`);
//   for ( i = 0; i < elements.length; i += 1) {
//     if (elements[i].style.display === 'none') {
//       elements[i].style.display = 'inline';
//       cat3button.style.backgroundColor = '#f2f2f2';
//       cat3button.onmouseover = function() {
//         this.style.backgroundColor = 'rgba(0, 0, 0, 0.05)';
//       }
//       cat3button.onmouseout = function() {
//         this.style.backgroundColor = '#f2f2f2';
//       }
//     } else {
//       elements[i].style.display = 'none';
//       cat3button.style.backgroundColor = 'rgba(0, 0, 0, 0.05)';
//       cat3button.onmouseover = function() {
//         this.style.backgroundColor = 'rgba(0, 0, 0, 0.1)';
//       }
//       cat3button.onmouseout = function() {
//         this.style.backgroundColor = 'rgba(0, 0, 0, 0.05)';
//       }
//     }
//   }
// }

//  end toggle images in category (3)

  const text01 = document.getElementById("text1");
  const text02 = document.getElementById("text2");
  const text03 = document.getElementById("text3");
  const text04 = document.getElementById("text4");
  const text05 = document.getElementById("text5");
  const text06 = document.getElementById("text6");
  const text07 = document.getElementById("text7");
  const text08 = document.getElementById("text8");
  const text09 = document.getElementById("text9");
  const text10 = document.getElementById("text10");
  const text11 = document.getElementById("text11");

  const button1 = document.getElementById("button1");
  const button2 = document.getElementById("button2");
  const button3 = document.getElementById("button3");
  const button4 = document.getElementById("button4");
  const button5 = document.getElementById("button5");
  const button6 = document.getElementById("button6");
  const button7 = document.getElementById("button7");
  const button8 = document.getElementById("button8");
  const button9 = document.getElementById("button9");
  const button10 = document.getElementById("button10");
  const button11 = document.getElementById("button11");

 button1.addEventListener("click", updateText1);
 //button2.addEventListener("click", updateImgp3);
 //button3.addEventListener("click", saveImg1);
 button4.addEventListener("click", updateText4);
 // button5.addEventListener("click", updateText5);
 // button6.addEventListener("click", updateText6);
 // button7.addEventListener("click", updateText7);
 // button8.addEventListener("click", updateText8);
 // button9.addEventListener("click", updateText9);
 // button10.addEventListener("click", updateTex10);
 // button11.addEventListener("click", updateText11);



function updateText1() {
  const text01 = document.getElementById('text1').innerHTML;
  document.getElementById('bloktext1').innerHTML='<textarea id="newtext1" class="" name="">' + text01 + '</textarea><button id="savetext1" class="control-button save-text"></button>';
  const savetext1 = document.getElementById('savetext1');
  savetext1.addEventListener("click", saveText1);
}

function saveText1() {
  // get content (everything between > and <) of element with id="newtext1" into variable :newtext01
  const newtext01 = $('#newtext1').val();
  // print content of newtext01 to console
  console.log(newtext01);
  // set new content
  document.getElementById('bloktext1').innerHTML = '<span id="text1">' + newtext01 + '</span><button id="button1" class="control-button edit-text"></button>';
  // get button
  const button1 = document.getElementById("button1");
  // activate button to execute function "updatetext1"
  button1.addEventListener("click", updateText1);
  // get all of element id="btid"
  const btid = document.getElementById("btid");
  // get content of attribute value
  console.log(btid.value);
  // get content of attribute data-tst
  console.log(btid.dataset.tst);
  // set route or path to update booktext
  var urll = '/booktexts/' + btid.value;
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  // update booktext.text1
  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'json',
    data: { text1: newtext01, authenticity_token: AUTH_TOKEN},
    complete: function() {},
    success: function() {
      alert('Ajax kampioen!')
    },
    error: function() {
      alert('Ajax gedegradeerd!')
    }
  });
}

function updateText4() {
  var text04 = document.getElementById('button4').innerHTML;
  console.log(text04);
  text04 = text04.replace(/<br\s*[\/]?>/gi, '\n');
  console.log(text04);
  document.getElementById('bloktext4').innerHTML='<div class="flex3"><textarea rows="2" cols="35" maxlength="90" id="newtext4" class="up" name="" autofocus>' + text04 + '</textarea></div>';
  console.log('autofocus');
  // document.getElementById('bloktext4').innerHTML='<div class="flex3"><button id="savetext4" class="save-img"></button><textarea rows="2" cols="40" maxlength="100" id="newtext4" class="up" name="">' + text04 + '</textarea></div>';
  const savetext4 = document.getElementById('newtext4');
  savetext4.addEventListener('focusout', saveText4);
  // savetext4.onmouseout = function() {
  //   saveText4();
  // }
  // savetext4.addEventListener("click", saveText4);
}

function saveText4() {
  // get content (everything between > and <) of element with id="newtext1" into variable :newtext01
  var newtext04 = $('#newtext4').val();
  newtext04 = newtext04.replace(/(\n)+/g, '<br />');
  // print content of newtext04 to console
  console.log(newtext04);
  // get all of element id="btid" (booktext.id)
  const btid = document.getElementById("btid");
  // get content of attribute value
  console.log(btid.value);
  // get content of attribute data-tst
  console.log(btid.dataset.tst);
  // set route or path to update booktext
  var urll = '/booktexts/' + btid.value;
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  // update booktext.text1
  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'json',
    data: { text4: newtext04, authenticity_token: AUTH_TOKEN},
    complete: function() {},
    success: function() {
    },
    error: function() {
    }
  });
  console.log('text4 saved!');

  document.getElementById('txt-indic-p5').innerHTML = newtext04;
  // remove focusout function on savetext4 not necessary, since content is replaced and id newtext4 is no longer available
  // savetext4.removeEventListener('focusout', saveText4);
  // set new content
  document.getElementById('bloktext4').innerHTML = '<div id="button4" class="editable">' + newtext04 + '</div>';
  // get button
  const button4 = document.getElementById("button4");
  // activate button to execute function "updatetext1"
  button4.addEventListener("click", updateText4);
}


var markers = [];
for (var i = 0; i < imageArray.length; ++i) {
    markers[i] = document.getElementById(`${imageArray[i]}`);
    if (markers[i]) {
    markers[i].addEventListener("click", updateBeeld(i));
  }
}

function updateBeeld(i) {
  return function() {
    updateImg(markers[i]);
    console.log("now showing image" + i);
  };
 }


function updateImg(imagedata) {
  const imagename = imagedata.value;
  const imgurl = imagedata.dataset.img;
  const btid = document.getElementById("btid").value;
  console.log(btid, imagename);
  var urll = '/booktexts/' + btid;
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  // update booktext.text5
  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'json',
    data: { text5: imagename, authenticity_token: AUTH_TOKEN},
    complete: function() {},
    success: function() {
    },
    error: function() {
    }
  });
  // hide imagelist
  // const e = document.getElementById("il");
  // e.style.display = 'none';
  // show edit image button
  // const bt = document.getElementById("button2");
  // bt.style.display = 'inline';
  document.getElementById("tekst5").src = `${imgurl}`;
  document.getElementById("tekst5").value = `${imagename}`;
  document.getElementById("img-indic-p5").src = `${imgurl}`;
}

function saveImg1() {
  const imagename = document.getElementById("tekst5").value;
  const btid = document.getElementById("btid");
  var urll = '/booktexts/' + btid.value;
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');

  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'json',
    data: { text5: imagename, authenticity_token: AUTH_TOKEN},
    complete: function() {},
    success: function() {
          },
    error: function() {
    }
  });
  // hide saveimg
  const e = document.getElementById("button3");
  e.style.display = 'none';
  // hide imagelist
  const il = document.getElementById("il");
  il.style.display = 'none';
  // show edit image button
  const bt = document.getElementById("button2");
  bt.style.display = 'inline';
}

$(".swipe").on("touchstart", function(event){
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
