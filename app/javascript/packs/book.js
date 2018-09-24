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

 button1.addEventListener("click", updateText1);
 button2.addEventListener("click", updateImg1);
 // button3.addEventListener("click", updateText3);
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
  const text04 = document.getElementById('text4').innerHTML;
  document.getElementById('bloktext4').innerHTML='<button id="savetext4" class="control-button save-text"></button><br><textarea id="newtext4" class="" name="">' + text04 + '</textarea>';
  const savetext4 = document.getElementById('savetext4');
  savetext4.addEventListener("click", saveText4);
}

function saveText4() {
  // get content (everything between > and <) of element with id="newtext1" into variable :newtext01
  const newtext04 = $('#newtext4').val();
  // print content of newtext04 to console
  console.log(newtext04);
  // set new content
  document.getElementById('bloktext4').innerHTML = '<button id="button4" class="control-button edit-text"></button><span id="text4">' + newtext04 + '</span>';
  // get button
  const button4 = document.getElementById("button4");
  // activate button to execute function "updatetext1"
  button4.addEventListener("click", updateText4);
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
      alert('Ajax kampioen!')
    },
    error: function() {
      alert('Ajax gedegradeerd!')
    }
  });
}

var imagefilename1

function updateImg1() {
  // show imagelist
  const e = document.getElementById("il");
  e.style.display = 'block';
  // hide edit image button
  const bt = document.getElementById("button2");
  bt.style.display = 'none';
  const nr = document.getElementById("numberofimages").value;
  console.log(nr);

  if ( nr > 0 ) {
    const imgbutton1 = document.getElementById("img1");
    imgbutton1.addEventListener("click", saveImg1);
    console.log("imgbutton1 loaded");
  }
  if ( nr > 1 ) {
    const imgbutton2 = document.getElementById("img2");
    imgbutton2.addEventListener("click", saveImg2);
    console.log("imgbutton2 loaded");
  }
  if ( nr > 2 ) {
    const imgbutton3 = document.getElementById("img3");
    imgbutton3.addEventListener("click", saveImg3);
    console.log("imgbutton3 loaded");
  }
  if ( nr > 3 ) {
    const imgbutton4 = document.getElementById("img4");
    imgbutton4.addEventListener("click", saveImg4);
  }
  if ( nr > 4 ) {
    const imgbutton5 = document.getElementById("img5");
    imgbutton5.addEventListener("click", saveImg5);
  }
  if ( nr > 5 ) {
    const imgbutton6 = document.getElementById("img6");
    imgbutton6.addEventListener("click", saveImg6);
  }
}

function saveImg1() {
  const filename = document.getElementById("img1").value;
  console.log(filename);
  // get all of element id="btid" (booktext.id)
  saveImg(filename);
}

function saveImg2() {
  const filename = document.getElementById("img2").value;
  console.log(filename);
  // get all of element id="btid" (booktext.id)
  saveImg(filename);
}

function saveImg3() {
  const filename = document.getElementById("img3").value;
  console.log(filename);
  // get all of element id="btid" (booktext.id)
  saveImg(filename);
}

function saveImg(file) {
  const imagename = file;
  const btid = document.getElementById("btid");
  // get content of attribute value
  console.log(btid.value);
  // get content of attribute data-tst
  var urll = '/booktexts/' + btid.value;
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  // update booktext.text1
  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'json',
    data: { text5: imagename, authenticity_token: AUTH_TOKEN},
    complete: function() {},
    success: function() {
      alert('Ajax kampioenen!')
    },
    error: function() {
      alert('Ajax gedegradeerd!')
    }
  });
  // hide imagelist
  const e = document.getElementById("il");
  e.style.display = 'none';
  // show edit image button
  const bt = document.getElementById("button2");
  bt.style.display = 'inline';
  document.getElementById("tekst5").src = `/assets/${imagename}`;
}
