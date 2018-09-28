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
 button2.addEventListener("click", updateImgp3);
 button3.addEventListener("click", saveImg1);
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
  document.getElementById('bloktext4').innerHTML='<div class="flex3"><button id="savetext4" class="control-button save-text"></button><textarea rows="2" cols="40" maxlength="100" id="newtext4" class="up" name="">' + text04 + '</textarea></div>';
  const savetext4 = document.getElementById('savetext4');
  savetext4.addEventListener("click", saveText4);
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
  // set new content
  document.getElementById('bloktext4').innerHTML = '<button id="button4" class="text-button">' + newtext04 + '</button>';
  // get button
  const button4 = document.getElementById("button4");
  // activate button to execute function "updatetext1"
  button4.addEventListener("click", updateText4);
}

var imagefilename1

function updateImgp3() {
  // show imagelist
  // const e = document.getElementById("il");
  // e.style.display = 'block';
  // show save image
  // const si = document.getElementById("button3");
  // si.style.display = 'inline';
  // hide edit image button
  // const bt = document.getElementById("button2");
  // bt.style.display = 'none';
  const nr = document.getElementById("numberofimages").value;
  console.log(nr);

  if ( nr > 0 ) {
    const imgbutton1 = document.getElementById("img1");
    imgbutton1.addEventListener("click", updateImg1);
    console.log("imgbutton1 loaded");
  }
  if ( nr > 1 ) {
    const imgbutton2 = document.getElementById("img2");
    imgbutton2.addEventListener("click", updateImg2);
    console.log("imgbutton2 loaded");
  }
  if ( nr > 2 ) {
    const imgbutton3 = document.getElementById("img3");
    imgbutton3.addEventListener("click", updateImg3);
    console.log("imgbutton3 loaded");
  }
  if ( nr > 3 ) {
    const imgbutton4 = document.getElementById("img4");
    imgbutton4.addEventListener("click", updateImg4);
  }
  if ( nr > 4 ) {
    const imgbutton5 = document.getElementById("img5");
    imgbutton5.addEventListener("click", updateImg5);
  }
  if ( nr > 5 ) {
    const imgbutton6 = document.getElementById("img6");
    imgbutton6.addEventListener("click", updateImg6);
  }
  if ( nr > 6 ) {
    const imgbutton6 = document.getElementById("img7");
    imgbutton6.addEventListener("click", updateImg7);
  }
  if ( nr > 7 ) {
    const imgbutton6 = document.getElementById("img8");
    imgbutton6.addEventListener("click", updateImg8);
  }
  if ( nr > 8 ) {
    const imgbutton6 = document.getElementById("img9");
    imgbutton6.addEventListener("click", updateImg9);
  }
}

function updateImg1() {
  const imagedata = document.getElementById("img1");
  updateImg(imagedata);
}

function updateImg2() {
  const imagedata = document.getElementById("img2");
  updateImg(imagedata);
}

function updateImg3() {
  const imagedata = document.getElementById("img3");
  updateImg(imagedata);
}

function updateImg4() {
  const imagedata = document.getElementById("img4");
  updateImg(imagedata);
}

function updateImg5() {
  const imagedata = document.getElementById("img5");
  updateImg(imagedata);
}

function updateImg6() {
  const imagedata = document.getElementById("img6");
  updateImg(imagedata);
}

function updateImg7() {
  const imagedata = document.getElementById("img7");
  updateImg(imagedata);
}

function updateImg8() {
  const imagedata = document.getElementById("img8");
  updateImg(imagedata);
}

function updateImg9() {
  const imagedata = document.getElementById("img9");
  updateImg(imagedata);
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
  document.getElementById("ind3").style = `background-image: url(${imgurl});`;
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

updateImgp3();
