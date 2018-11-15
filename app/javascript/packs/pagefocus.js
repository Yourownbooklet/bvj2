function toggleSelection(pp) {
  if ( pp.classList.contains('selected') ) {
    console.log('no action: already selected');
  }
  else {
    const selected = document.getElementsByClassName('selected')[0];
    selected.classList.toggle('selected');
    pp.classList.toggle('selected');
    console.log('toggled');
  }
}

console.log('toggleSelection loaded');
export { toggleSelection };
