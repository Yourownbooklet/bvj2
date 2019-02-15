function saveKalText() {
  const booktid = document.getElementById("btid").value;
  const sbtbutton = document.getElementById(`savebooktext${booktid}`);
  sbtbutton.addEventListener("click", createBook);
  const sbtcontrol = document.getElementById(`stepscontrolbutton${booktid}`);
  sbtcontrol.addEventListener("click", createBook);
  console.log("createBook2 loaded");
}

var newtext01;

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

function createBook() {
  // get newtext01
  getText1();

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
      data: {
        book: {
          text1: newtext01, booktemplate_id: btid
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
