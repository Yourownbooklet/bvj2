console.log(btid.value);

button.addEventListener("click", saveAnswers);

function saveAnswers() {
  console.log('dd');
  console.log(btid.value);
  var urll = '/booktexts/' + btid.value;
  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'json',
    data: { text1: text01},
    complete: function() {},
    success: function() {
      alert('Ajax kampioen!')
    },
    error: function() {
      alert('Ajax gedegradeerd!')
    }
  });
}
