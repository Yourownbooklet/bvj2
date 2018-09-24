function saveBookText1() {
  const sbtbutton = document.getElementById("savebooktext11");
  sbtbutton.addEventListener("click", createBook11);
  const sbtcontrol = document.getElementById("stepscontrolbutton11");
  sbtcontrol.addEventListener("click", createBook11);
  const sbtpijl = document.getElementById("stepscontrolpijl11");
  sbtpijl.addEventListener("click", createBook11);
  console.log("createBook11 loaded");
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
  const txtfixed = document.getElementById("tekst2");
  const tf = txtfixed.dataset.txt;
  newtext02 = tf;
  console.log(newtext02);
}

function getText3() {
  if ( run === true ){
    // get everything between of answer on q1 ><
    const q_answer = $('#2').val();
    if ( q_answer ) {
      // get element with id "text2"
      const txtfixed = document.getElementById("tekst3");
      // get content of atrribute data-txt
      const tf = txtfixed.dataset.txt;
      // build new text content based on q-answer and fixed text
      newtext03 = q_answer + tf;
      console.log(newtext03);
      run = true;
    } else {
      alert('Voer een datum in!');
      run = false;
    }
  }
}

function getText4() {
  const q_answer = $('#1').val();
  const q_answer_4 = $('#4').val();
  if ( q_answer_4 === "thuis") {
    const txtfixed = document.getElementById("tekst4");
    const tf = txtfixed.dataset.txt;
    newtext04 = tf;
    console.log(newtext04);
  } else {
    const txtfixed_1 = document.getElementById("tekst8");
    const tf_1 = txtfixed_1.dataset.txt;
    const txtfixed_2 = document.getElementById("tekst9");
    const tf_2 = txtfixed_2.dataset.txt;
    newtext04 = tf_1 + q_answer + tf_2;
    console.log(newtext04);
  }
}

function getText5() {
  const q_answer = $('#1').val();
  const q_answer_4 = $('#4').val();
  if ( q_answer_4 === "thuis" ) {
    const txtfixed = document.getElementById("tekst5");
    const tf = txtfixed.dataset.txt;
    newtext05 = tf;
    console.log(newtext05);
  } else {
    const txtfixed = document.getElementById("tekst10");
    const tf = txtfixed.dataset.txt;
    newtext05 = tf;
    console.log(newtext05);
  }
}

function getText6() {
  const q_answer = $('#1').val();
  const q_answer_4 = $('#4').val();
  const txtfixed_1 = document.getElementById("tekst6");
  const txtfixed_2 = document.getElementById("tekst7");
  if (q_answer_4 === "thuis" ) {
    const tf_1 = txtfixed_1.dataset.txt;
    const tf_2 = txtfixed_2.dataset.txt;
    newtext06 = tf_1 + q_answer + tf_2;
    console.log(newtext06);
  }
}

function getText7() {
  const q_answer = $('#1').val();
  const txtfixed = document.getElementById("tekst11");
  const tf = txtfixed.dataset.txt;
  newtext07 = tf + q_answer;
  console.log(newtext07);
}

function getText8() {
  const q_answer_3 = $('#3').val();
  if ( q_answer_3 === "jongen") {
    const txtfixed = document.getElementById("tekst12");
    const tf = txtfixed.dataset.txt;
    newtext08 = tf;
    console.log(newtext08);
  } else {
    const txtfixed = document.getElementById("tekst14");
    const tf = txtfixed.dataset.txt;
    newtext08 = tf;
    console.log(newtext08);
  }
}

function getText9() {
  const q_answer_3 = $('#3').val();
  if ( q_answer_3 === "jongen") {
    const txtfixed = document.getElementById("tekst13");
    const tf = txtfixed.dataset.txt;
    newtext09 = tf;
    console.log(newtext09);
  } else {
    const txtfixed = document.getElementById("tekst15");
    const tf = txtfixed.dataset.txt;
    newtext09 = tf;
    console.log(newtext09);
  }
}

function createBook11() {
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
