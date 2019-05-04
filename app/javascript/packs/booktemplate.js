import "bootstrap";
import {saveBookText1} from "./savebooktext";

saveBookText1();

console.log('Hello there from booktemplate.js');

let answers = [];
const fields = document.getElementsByClassName('booktemplate-variabele');
for (let i = 0, len = fields.length; i < len; i++) {
    answers[fields[i].id] = fields[i];
    answers[fields[i].id].addEventListener("change", updateAnswer);
}

// get answers from sessionStore (if available):
if (sessionStorage.getItem("answers")) {

  const answers = JSON.parse(sessionStorage.getItem("answers"));
  console.log(answers);

    for (let j = 0, len = answers.length; j < len; j++) {
        if (null !== answers[j]) {
            document.getElementById(answers[j]['id']).value = answers[j]['answer'];

            if (document.getElementsByClassName('answerq' + answers[j]['id'])) {
                document.getElementsByClassName('answerq' + answers[j]['id'])[0].innerHTML = answers[j]['answer'];
            }
        }
    }
}

// Update the answer in the sessionsStorage and screen elements
function updateAnswer(e) {
    const elem = e.srcElement;
    console.log(elem.id);
    const answers = sessionStorage.getItem('answers') ? JSON.parse(sessionStorage.getItem('answers')) : [];
    console.log(answers);
    if (answers.filter(a => a.id == elem.id)) {
        let index = answers.findIndex(a => a.id == elem.id);
        answers[index] = {id: elem.id, answer: elem.value};
    } else {
        answers.push({id: elem.id, answer: elem.value});
    }
    sessionStorage.setItem("answers", JSON.stringify(answers));
    console.log(answers);

    if (document.getElementsByClassName('answerq' + elem.id)[0]) {
        document.getElementsByClassName('answerq' + elem.id)[0].innerHTML = elem.value;
    }
}
