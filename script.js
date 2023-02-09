let previousPosition = window.pageYOffset;
let timeout;

window.onscroll = function() {
    let currentPosition = window.pageYOffset;
    let navbar = document.querySelector("nav");

    if (currentPosition >= previousPosition) {
        navbar.classList.remove("visible");
    } else {
        navbar.classList.add("visible");
    }
    previousPosition = currentPosition;

    setTimeout(function() {
        navbar.classList.add("visible");
      }, 350);

    if (timeout) {
        clearTimeout(timeout);
    }

};







// window.onscroll = function() {
//   if (timeout) {
//     clearTimeout(timeout);
//   }

//   navbar.classList.add("visible")

//   timeout = setTimeout(function() {
//   }, 250);
// };


