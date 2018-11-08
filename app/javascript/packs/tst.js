// function array

 for(var i=0; i< immageArray.length; i++) {
       imageArray[i].addEventListener("click", bindClick(i));
 }

 function bindClick(i) {
    return function() {
        console.log("you clicked region number " + i);
    };
 }


// ******



console.log(btid.value);

button.addEventListener("click", saveAnswers);

function saveAnswers() {
  console.log('dd');
  console.log(btid.value);
  var urll = '/booktexts/' + btid.value;
  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'json',
    data: { text1: text01},
    complete: function() {},
    success: function() {
      alert('Ajax kampioen!')
    },
    error: function() {
      alert('Ajax gedegradeerd!')
    }
  });
}


// **************
function updateAnswerQ2() {
  var i, elements = document.getElementsByClassName('answerq2');
  for ( i = 0; i < elements.length; i += 1) {
    elements[i].innerHTML = answerq2.value;
  }
}

function updateAnswerQ3() {
  const element = document.getElementById('answerq3');
  if (answerq3.value === "jongen") {
  element.innerHTML = `<div class="page-size-voorleesboek-ingrid">
  <div class="content-voorleesboek-ingrid"><img src="/assets/img4-b.jpg" class="img-voorleesboek-ingrid">
      <div class="tekstbox-voorleesboek-ingrid">
        Wat een prachtig ventje!
      </div>  </div>
</div>
`;
  } else {
  element.innerHTML = `<div class="page-size-voorleesboek-ingrid">
  <div class="content-voorleesboek-ingrid"><img src="/assets/img4-g.jpg" class="img-voorleesboek-ingrid">
      <div class="tekstbox-voorleesboek-ingrid">
        Wat een mooi meisje!
      </div>  </div>
</div>
`;
  }
}


// auto-generate carousel indicator html
var myCarousel = $(".carousel");
myCarousel.append("<ol class='carousel-indicators'></ol>");
var indicators = $(".carousel-indicators");
myCarousel.find(".carousel-inner").children(".item").each(function(index) {
    (index === 0) ?
    indicators.append("<li data-target='#myCarousel' data-slide-to='"+index+"' class='active'></li>") :
    indicators.append("<li data-target='#myCarousel' data-slide-to='"+index+"'></li>");
});

// then call carousel
$('.carousel').carousel();
