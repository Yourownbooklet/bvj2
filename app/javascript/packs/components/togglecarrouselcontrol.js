function toggleCarouselControl(pp) {
  if ( pp.classList.contains('front') ) {
    console.log('this is the front cover');
    document.getElementsByClassName('glyphicon-chevron-left')[0].style.display ='none';
    document.getElementsByClassName('glyphicon-chevron-right')[0].style.display ='block';
  } else if ( pp.classList.contains('back') ) {
    console.log('this is the back cover');
    document.getElementsByClassName('glyphicon-chevron-left')[0].style.display ='block';
    document.getElementsByClassName('glyphicon-chevron-right')[0].style.display ='none';
  } else {
    console.log('this an inner page');
    document.getElementsByClassName('glyphicon-chevron-left')[0].style.display ='block';
    document.getElementsByClassName('glyphicon-chevron-right')[0].style.display ='block';
  }
}

console.log('toggleCarouselControl loaded');
export { toggleCarouselControl };
