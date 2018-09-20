import "bootstrap";
console.log('Hello there from Webpacker');

  const answerq1 = document.getElementById("1");
  const answerq2 = document.getElementById("2");
  const answerq3 = document.getElementById("3");
  const answerq4 = document.getElementById("4");
  const answerq5 = document.getElementById("5");
  const answerq6 = document.getElementById("6");

  answerq1.addEventListener("change", updateAnswerQ1);
  answerq2.addEventListener("change", updateAnswerQ2);
  answerq3.addEventListener("change", updateAnswerQ3);
  answerq4.addEventListener("change", updateAnswerQ4);
  answerq5.addEventListener("change", updateAnswerQ5);
  answerq6.addEventListener("change", updateAnswerQ6);

function updateAnswerQ1() {
  var i, elements = document.getElementsByClassName('answerq1');
  for ( i = 0; i < elements.length; i += 1) {
    elements[i].innerHTML = answerq1.value;
  }
 console.log(answerq1.value);
}

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

function updateAnswerQ4() {
  const element = document.getElementById('answerq4');
  if (answerq4.value === "thuis") {
  element.innerHTML = `<div class="page-size-voorleesboek-ingrid">
  <div class="content-voorleesboek-ingrid">
      <div class="tekstbox-voorleesboek-ingrid">
        Papa en mama zaten thuis rustig een kopje koffie te drinken.
      </div>
      <img src="/assets/Afbeelding-3a.jpg" class="img-voorleesboek-ingrid">
      <div class="tekstbox-voorleesboek-ingrid">
        Zou <span class="answerq1">` + answerq1.value + `</span> vandaag misschien komen?
      </div>  </div>
</div>
      `;
  } else {
  element.innerHTML = `<div class="page-size-voorleesboek-ingrid">
  <div class="content-voorleesboek-ingrid">
    <div class="tekstbox-voorleesboek-ingrid">
    Papa en Mama zijn naar het ziekenhuis gegaan omdat <span class="answerq1">` + answerq1.value + `</span> uit mama's buik wil.
    </div>
    <img src="/assets/Afbeelding-3b.jpg" class="img-voorleesboek-ingrid">  </div>
</div>
  `;
  }
}

function updateAnswerQ5() {
  var i, elements = document.getElementsByClassName('answerq5');
  for ( i = 0; i < elements.length; i += 1) {
    elements[i].innerHTML = answerq5.value;
  }
}

function updateAnswerQ6() {
  var i, elements = document.getElementsByClassName('answerq6');
  for ( i = 0; i < elements.length; i += 1) {
    elements[i].innerHTML = answerq6.value;
  }
}
