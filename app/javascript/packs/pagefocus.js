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
  if (screen.width > 400){
    pp.scrollIntoView({behavior: "smooth"});
  }
}

function switchFocus(pp) {
    // toggleSelection(pp);
    console.log(pp.id);
    if ( pp.id === "p5") {
      const categories = document.getElementById("categories");
      categories.style.display = 'block';
      const no_image = document.getElementById("no-image");
      no_image.style.display = 'none';
      const images = document.getElementById("square-images");
      // const images = document.getElementById("landscape-images");
      images.style.display = 'block';
      console.log(`it is page5`);
    } else {
      const categories = document.getElementById("categories");
      categories.style.display = 'none';
      const no_image = document.getElementById("no-image");
      no_image.style.display = 'block';
      const images = document.getElementById("square-images");
      // const images = document.getElementById("landscape-images");
      images.style.display = 'none';
      console.log(`it is not page5`)
    }
}


// console.log('toggleSelection loaded');
// export { toggleSelection };
console.log('switchFocus loaded');
export { switchFocus };
