function saveBookText1() {
  const booktid = document.getElementById("btid").value;
  const sbtbutton = document.getElementById(`savebooktext${booktid}`);
  const sbt_2control = document.getElementById(`stepscontrolbutton${booktid}`);
  const sbt_2_scontrol = document.getElementById(`stepscontrolbutton-s${booktid}`);
  if (sessionStorage.getItem("bookid")) {
    sbtbutton.addEventListener("click", updateBook);
    sbt_2control.addEventListener("click", updateBook);
    sbt_2_scontrol.addEventListener("click", updateBook);
  } else {
    sbtbutton.addEventListener("click", createBook);
    sbt_2control.addEventListener("click", createBook);
    sbt_2_scontrol.addEventListener("click", createBook);
  }
  console.log(`createBook${booktid} loaded`);
}

var btid;
var AUTH_TOKEN;
var urll;
var jsbooktexts;
var booktexts;
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
    newtext01 = tf.replace("~name~", q_answer);
    // newtext01 = tf + q_answer;
    console.log(newtext01);
    run = true;
  } else {
    const b1 = document.getElementById("1");
    b1.style.borderColor = '#ef5353';
    b1.style.borderStyle = 'solid';
    b1.style.borderWidth = '2px';
    b1.focus();
    // alert('Voer een naam in!');
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
      const b1 = document.getElementById("1");
      b1.style.borderStyle = 'none';
      const b2 = document.getElementById("2");
      b2.style.borderColor = '#ef5353';
      b2.style.borderStyle = 'solid';
      b2.style.borderWidth = '2px';
      b2.focus();
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
    const txtfixed_1 = document.getElementById("tekst7");
    const tf_1 = txtfixed_1.dataset.txt;
    newtext04 = tf_1.replace("~name~", q_answer);
    // newtext04 = tf_1 + q_answer + tf_2;
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
    const txtfixed = document.getElementById("tekst8");
    const tf = txtfixed.dataset.txt;
    newtext05 = tf;
    console.log(newtext05);
  }
}

function getText6() {
  const q_answer = $('#1').val();
  const q_answer_4 = $('#4').val();
  const txtfixed_1 = document.getElementById("tekst6");
  if (q_answer_4 === "thuis" ) {
    const tf_1 = txtfixed_1.dataset.txt;
    newtext06 = tf_1.replace("~name~", q_answer);
    console.log(newtext06);
  } else {
    newtext06 = "";
  }
}

function getText7() {
  const q_answer = $('#1').val();
  const txtfixed = document.getElementById("tekst9");
  const tf = txtfixed.dataset.txt;
  newtext07 = tf.replace("~name~", q_answer);
  // newtext07 = tf + q_answer;
  console.log(newtext07);
}

function getText8() {
  const q_answer_3 = $('#3').val();
  if ( q_answer_3 === "jongen") {
    const txtfixed = document.getElementById("tekst10");
    const tf = txtfixed.dataset.txt;
    newtext08 = tf;
    console.log(newtext08);
  } else {
    const txtfixed = document.getElementById("tekst12");
    const tf = txtfixed.dataset.txt;
    newtext08 = tf;
    console.log(newtext08);
  }
}

function getText9() {
  const q_answer_3 = $('#3').val();
  if ( q_answer_3 === "jongen") {
    const txtfixed = document.getElementById("tekst11");
    const tf = txtfixed.dataset.txt;
    newtext09 = tf;
    console.log(newtext09);
  } else {
    const txtfixed = document.getElementById("tekst13");
    const tf = txtfixed.dataset.txt;
    newtext09 = tf;
    console.log(newtext09);
  }
}

function getText10() {
  const q_answer = $('#5').val();
  if ( q_answer ) {
    newtext10 = q_answer;
  } else {
    newtext10 = "no text (hard coded in JS)";
  }
  console.log(newtext10);
}

function getBookData() {
  getText1();
  getText2();
  getText3();
  getText4();
  getText5();
  getText6();
  getText7();
  getText8();
  getText9();
  getText10();
  jsbooktexts = [newtext01,newtext02,newtext03,newtext04,newtext05,newtext06,newtext07,newtext08,newtext09,newtext10,"dummy, for some reason the last entry in skipped by active record"];
  booktexts = JSON.stringify(jsbooktexts);
  // get content of attribute value of element id="btid": booktemplate_id
  btid = document.getElementById("btid").value;
  // set route or path to create book
  // urll = '/booka/';
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  console.log(AUTH_TOKEN);
}

function createBook() {
  getBookData();
  if ( run === true ){
    $.ajax({
      type: 'POST',
      url: '/books/',
      datatype: 'json',
      data: {
        book: {
          booktemplate_id: btid,
          booktexts: booktexts
          },
        authenticity_token: AUTH_TOKEN
      },
      complete: function() {},
      success: function(data) {
        console.log(data);
      },
      error: function() {
      }
    });
  }
}

function updateBook() {
  getBookData();
  const bookid = sessionStorage.getItem("bookid");
  //TODO update book
  if ( run === true ){
    $.ajax({
      type: 'PATCH',
      url: '/booka/' + bookid,
      datatype: 'json',
      data: {
        book: {
          booktexts: booktexts,
          booktemplate_id: btid,
          },
        authenticity_token: AUTH_TOKEN
      },
      complete: function() {},
      success: function(data) {
        console.log(data);
      },
      error: function() {
      }
    });
  }
}

export { saveBookText1 };
