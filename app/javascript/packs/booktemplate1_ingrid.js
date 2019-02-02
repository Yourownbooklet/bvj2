import "bootstrap";
import { saveBookText1 } from "./savebooktext";
saveBookText1();

console.log('Hello there from Webpacker booktemplate1.js');

const answerq1 = document.getElementById("1");
const answerq2 = document.getElementById("2");
const answerq3 = document.getElementById("3");
const answerq4 = document.getElementById("4");

answerq1.addEventListener("change", updateAnswerQ1);
answerq2.addEventListener("change", updateAnswerQ2);
// get answers from sessionStore (if available):
if (sessionStorage.getItem("answerq1")) {
  console.log(sessionStorage.getItem("answerq1"));
  document.getElementsByClassName('answerq1')[0].innerHTML = sessionStorage.answerq1;
  document.getElementById("1").value = sessionStorage.answerq1;
};


if (sessionStorage.getItem("answerq2")) {
  document.getElementById("2").value = sessionStorage.answerq2;
};


function updateAnswerQ1() {
  // var i, elements = document.getElementsByClassName('answerq1');
  // for ( i = 0; i < elements.length; i += 1) {
  //   elements[i].innerHTML = answerq1.value;
  // }
  document.getElementsByClassName('answerq1')[0].innerHTML = answerq1.value;
  sessionStorage.setItem("answerq1", answerq1.value );
  console.log(answerq1.value);
}

function updateAnswerQ2() {
  sessionStorage.setItem("answerq2", answerq2.value );
  console.log(answerq1.value);
}
