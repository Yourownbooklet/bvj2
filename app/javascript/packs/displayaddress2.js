const address2 = document.getElementById('address2Check');
address2.addEventListener("change", displayAddress2Input);
console.log(address2)

function displayAddress2Input() {
  const da = document.getElementById("address-2");
  const aa = document.getElementById("afleveradreshetzelfde");
  if (da.style.display === 'none') {
    da.style.display = 'block';
    aa.value = "false";
  } else {
    da.style.display = 'none';
    aa.value = "true";
  }
}

console.log('displayAddres2Input loaded')

export { displayAddress2Input };
