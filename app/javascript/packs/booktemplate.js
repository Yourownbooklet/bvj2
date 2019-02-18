import "bootstrap";
import {saveBookText1} from "./savebooktext";

saveBookText1();

var answers = [];
var fields = document.getElementsByClassName('booktemplate-variabele');
for (var i = 0, len = fields.length; i < len; i++) {
    answers[fields[i].id] = fields[i];
    answers[fields[i].id].addEventListener("change", updateAnswer);
}

// get answers from sessionStore (if available):
if (sessionStorage.getItem("answers")) {

    var answers = JSON.parse(sessionStorage.getItem("answers"));

    for (var j = 0, len = answers.length; j < len; j++) {
        if (null !== answers[j]) {
            document.getElementById(answers[j]['id']).value = answers[j]['answer'];
        }
    }
}

// Update the answer in the sessionsStorage
function updateAnswer(e) {
    var elem = e.srcElement;
    let answers = sessionStorage.getItem('answers') ? JSON.parse(sessionStorage.getItem('answers')) : [];

    if (answers.filter(a => a.id == elem.id)) {
        var index = answers.findIndex(a => a.id == elem.id);
        answers[index] = {id: elem.id, answer: elem.value};
    } else {
        answers.push({id: elem.id, answer: elem.value});
    }
    sessionStorage.setItem("answers", JSON.stringify(answers));
}
