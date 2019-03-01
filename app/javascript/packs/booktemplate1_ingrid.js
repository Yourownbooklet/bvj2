import "bootstrap";
import { saveBookText1 } from "./savebooktext";
saveBookText1();

const booktid = document.getElementById("btid").value;
console.log(`Hello there from Webpacker booktemplate${booktid}.js`);

// TODO: create following in loop on number of questions in template
const answerq1 = document.getElementById("1");
const answerq2 = document.getElementById("2");
const answerq3 = document.getElementById("3");
const answerq4 = document.getElementById("4");
const answerq5 = document.getElementById("5");

answerq1.addEventListener("change", updateAnswerQ1);
answerq2.addEventListener("change", updateAnswerQ2);
answerq3.addEventListener("change", updateAnswerQ3);
answerq4.addEventListener("change", updateAnswerQ4);
answerq5.addEventListener("change", updateAnswerQ5);

// get Bookid from sessionStore (if available):
if (sessionStorage.getItem("bookid")) {
  console.log(sessionStorage.getItem("bookid"));
};

// get answers from sessionStore (if available):
if (sessionStorage.getItem("answerq1")) {
  console.log(sessionStorage.getItem("answerq1"));
  // document.getElementsByClassName('answerq1')[0].innerHTML = sessionStorage.answerq1;
  document.getElementById("1").value = sessionStorage.answerq1;
};


if (sessionStorage.getItem("answerq2")) {
  console.log(sessionStorage.getItem("answerq2"));
  document.getElementById("2").value = sessionStorage.answerq2;
};

if (sessionStorage.getItem("answerq3")) {
  console.log(sessionStorage.getItem("answerq3"));
  document.getElementById("3").value = sessionStorage.answerq3;
};

if (sessionStorage.getItem("answerq4")) {
  console.log(sessionStorage.getItem("answerq4"));
  document.getElementById("4").value = sessionStorage.answerq4;
};

if (sessionStorage.getItem("answerq5")) {
  console.log(sessionStorage.getItem("answerq5"));
  document.getElementById("5").value = sessionStorage.answerq5;
};

if (sessionStorage.getItem("bookid")) {
  console.log(sessionStorage.getItem("bookid"));
};

function updateAnswerQ1() {
  // document.getElementsByClassName('answerq1')[0].innerHTML = answerq1.value;
  sessionStorage.setItem("answerq1", answerq1.value );
  console.log(answerq1.value);
}

function updateAnswerQ2() {
  sessionStorage.setItem("answerq2", answerq2.value );
  console.log(answerq2.value);
}

function updateAnswerQ3() {
  sessionStorage.setItem("answerq3", answerq3.value );
  console.log(answerq3.value);
}

function updateAnswerQ4() {
  sessionStorage.setItem("answerq4", answerq4.value );
  console.log(answerq4.value);
}

function updateAnswerQ5() {
  sessionStorage.setItem("answerq5", answerq5.value );
  console.log(answerq5.value);
}
