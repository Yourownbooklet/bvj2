function saveKalText() {
  const booktid = document.getElementById("btid").value;
  const sbtbutton = document.getElementById(`savebooktext${booktid}`);
  sbtbutton.addEventListener("click", createBook);
  const sbtcontrol = document.getElementById(`stepscontrolbutton${booktid}`);
  sbtcontrol.addEventListener("click", createBook);
  console.log("createBook2 loaded");
}

var btid;
var AUTH_TOKEN;
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
    newtext01 = tf + q_answer;
    console.log(newtext01);
    run = true;
  } else {
    alert('Voer een naam in!');
    run = false;
  }
}

function getBookData() {
  // get newtext01
  getText1();
  jsbooktexts = [newtext01,"dummy, for some reason the last entry in skipped by active record"];
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
        alert('Ajax gedegradeerd!')
      }
    });
  }
}

export { saveKalText };
