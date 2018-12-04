
function saveEmail() {
  const epost = $('#epost').val();
  // const epost = document.getElementById("epost").value;
  // set route or path to update book
  var urll = '/book/';
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  // create book with booktemplate_id en newtext01 in booktext
  if ( run === true ){
    $.ajax({
      type: 'POST',
      url: urll,
      datatype: 'json',
      data: {
        book: {
          text1: newtext01, text2: newtext02,
          text3: newtext03, text4: newtext04,
          text5: newtext05, text6: newtext06,
          text7: newtext07, text8: newtext08,
          text9: newtext09, text10: newtext10,
          text11: newtext11,
          booktemplate_id: btid,
          },
        authenticity_token: AUTH_TOKEN
      },
      complete: function() {},
      success: function(data) {
        console.log(data);
      },
      error: function() {
      }
    });
  }
}

export { saveBookText1 };
