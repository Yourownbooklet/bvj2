import "bootstrap";
import { saveBookText1 } from "./savebooktext";
saveBookText1();

console.log('Hello there from Webpacker booktemplate1.js');

const answerq1 = document.getElementById("1");
const answerq2 = document.getElementById("2");
const answerq3 = document.getElementById("3");
const answerq4 = document.getElementById("4");

answerq1.addEventListener("change", updateAnswerQ1);

function updateAnswerQ1() {
  var i, elements = document.getElementsByClassName('answerq1');
  for ( i = 0; i < elements.length; i += 1) {
    elements[i].innerHTML = answerq1.value;
  }
 console.log(answerq1.value);
}
