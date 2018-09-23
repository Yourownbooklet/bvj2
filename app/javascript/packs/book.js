import "bootstrap";

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

console.log(button1.innerHTML);
console.log('updatetext');

 button1.addEventListener("click", updateText1);
 button2.addEventListener("click", updateText2);
 button3.addEventListener("click", updateText3);
 button4.addEventListener("click", updateText4);
 button5.addEventListener("click", updateText5);
 button6.addEventListener("click", updateText6);
 button7.addEventListener("click", updateText7);
 button8.addEventListener("click", updateText8);
 button9.addEventListener("click", updateText9);
 button10.addEventListener("click", updateTex10);
 button11.addEventListener("click", updateText11);



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
