const address2 = document.getElementById('address2Check');
address2.addEventListener("change", displayAddress2Input);
console.log(address2);
console.log("address check loaded");

function displayAddress2Input() {
  const da = document.getElementById("address-2");
  const bb = document.getElementById("user_afleveradreshetzelfde");
  if (da.style.display === 'none') {
    da.style.display = 'block';
    bb.value = "false";
  } else {
    da.style.display = 'none';
    bb.value = "true";
  }
  console.log(bb.value);
}

console.log('displayAddres2Input loaded')

export { displayAddress2Input };
