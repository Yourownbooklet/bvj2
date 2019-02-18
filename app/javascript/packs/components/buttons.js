function toggleBtDetails() {
  const btids = JSON.parse(document.getElementById('btids').dataset.btids);
  let button_markers = [];
  var i = 0
  for (var i = 0; i < btids.length; ++i) {
    console.log(btids[i]);
    button_markers[i] = document.getElementById(`bt-button-details-` + `${ btids[i]}`);
    button_markers[i].addEventListener('click', toggle(btids[i]));
  };
}

function toggle(btid) {
  return function() {
    const bt_details = document.getElementById(`bt-` + `${btid}`)
    if (bt_details.style.display === 'none') {
      document.getElementById(`bt-button-details-` + `${btid}`).innerHTML = 'sluit details';
      bt_details.style.display = 'block';
    } else {
      document.getElementById(`bt-button-details-` + `${btid}`).innerHTML = 'details';
      bt_details.style.display = 'none';
    }
  }
}

export { toggleBtDetails };
