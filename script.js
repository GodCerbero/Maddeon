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
<<<<<<< HEAD
 };


// const capasuperior = document.querySelector(".welcome_overlay");

// const servicio = document.querySelector(".welcome_servicescontainer_service");

// servicio.addEventListener(MouseEvent, function(){
//     capasuperior.style.transform= 'translateY(-100%)'
// })
=======

};

>>>>>>> 0ab9b6746442a91147c6755e9e8497cf6e46f586






// window.onscroll = function() {
//   if (timeout) {
//     clearTimeout(timeout);
//   }

//   navbar.classList.add("visible")

//   timeout = setTimeout(function() {
//   }, 250);
// };


