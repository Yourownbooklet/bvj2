import "bootstrap";
import { saveKalText } from "./savekaltext";
saveKalText();

const booktid = document.getElementById("btid").value;
console.log(`Hello there from Webpacker booktemplate${booktid}.js`);

const answerq1 = document.getElementById("1");

answerq1.addEventListener("change", updateAnswerQ1);

function updateAnswerQ1() {
  var i, elements = document.getElementsByClassName('answerq1');
  for ( i = 0; i < elements.length; i += 1) {
    elements[i].innerHTML = answerq1.value;
  }
 console.log(answerq1.value);
}
