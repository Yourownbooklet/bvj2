function saveBookText1() {
  const sbtbutton = document.getElementById("savebooktext1");
  sbtbutton.addEventListener("click", createBook);
  const sbtcontrol = document.getElementById("stepscontrolbutton");
  sbtcontrol.addEventListener("click", createBook);
  const sbtpijl = document.getElementById("stepscontrolpijl");
  sbtpijl.addEventListener("click", createBook);
  console.log("createBook loaded");
}

var newtext01;
var newtext02;
var newtext03;
var newtext04;
var newtext05;
var newtext06;
var newtext07;
var newtext08;
var newtext09;
var newtext10;
var newtext11;

var run = true;

function getText1() {
  // get everything between of answer on q1 ><
  const q_answer = $('#1').val();
  if ( q_answer ) {
    // get element with id "text1"
    const txtfixed = document.getElementById("tekst1");
    // get content of atrribute data-txt
    const tf = txtfixed.dataset.txt;
    // build new text content based on q-answer and fixed text
    newtext01 = tf + q_answer;
    console.log(newtext01);
    run = true;
  } else {
    alert('Voer een naam in!');
    run = false;
  }
}

function getText2() {
  if ( run === true ){
    // get everything between of answer on q1 ><
    const q_answer = $('#2').val();
    if ( q_answer ) {
      // get element with id "text2"
      const txtfixed = document.getElementById("tekst2");
      // get content of atrribute data-txt
      const tf = txtfixed.dataset.txt;
      // build new text content based on q-answer and fixed text
      newtext02 = q_answer + tf;
      console.log(newtext02);
      run = true;
    } else {
      alert('Voer een datum in!');
      run = false;
    }
  }
}

function getText3() {
  const txtfixed = document.getElementById("tekst3");
  const tf = txtfixed.dataset.txt;
  newtext03 = tf;
  console.log(newtext03);
}

function getText4() {
  const txtfixed = document.getElementById("tekst4");
  const tf = txtfixed.dataset.txt;
  newtext04 = tf;
}
function getText5() {
  const txtfixed = document.getElementById("tekst5");
  const tf = txtfixed.dataset.txt;
  newtext05 = tf;
}
function getText6() {
  const txtfixed = document.getElementById("tekst6");
  const tf = txtfixed.dataset.txt;
  newtext06 = tf;
}
function getText7() {
  const txtfixed = document.getElementById("tekst7");
  const tf = txtfixed.dataset.txt;
  newtext07 = tf;
}
function getText8() {
  const txtfixed = document.getElementById("tekst8");
  const tf = txtfixed.dataset.txt;
  newtext08 = tf;
}
function getText9() {
  const txtfixed = document.getElementById("tekst9");
  const tf = txtfixed.dataset.txt;
  newtext09 = tf;
}
function getText10() {
  const txtfixed = document.getElementById("tekst10");
  const tf = txtfixed.dataset.txt;
  newtext10 = tf;
}
function getText11() {
  const txtfixed = document.getElementById("tekst11");
  const tf = txtfixed.dataset.txt;
  newtext11 = tf;
  console.log(newtext11);
}


function createBook() {
  // get newtext01
  getText1();
  // get newtext02
  getText2();
  getText3();
  getText4();
  getText5();
  getText6();
  getText7();
  getText8();
  getText9();
  getText10();
  getText11();
  // get content of attribute value of element id="btid": booktemplate_id
  const btid = document.getElementById("btid").value;
  // set route or path to create book
  var urll = '/booka/';
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  // create book with booktemplate_id en newtext01 in booktext
  if ( run === true ){
    $.ajax({
      type: 'POST',
      url: urll,
      datatype: 'json',
      data: { text1: newtext01, text2: newtext02, text3: newtext03, text4: newtext04, text5: newtext05, text6: newtext06, text7: newtext07, text8: newtext08, text9: newtext09, text10: newtext10, text11: newtext11, booktemplate_id: btid, authenticity_token: AUTH_TOKEN},
      complete: function() {},
      success: function(data) {
        console.log(data);
      },
      error: function() {
        alert('Ajax gedegradeerd!')
      }
    });
  }
}

export { saveBookText1 };
