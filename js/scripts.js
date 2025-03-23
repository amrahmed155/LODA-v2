/*!
 * Start Bootstrap - Agency v7.0.12 (https://startbootstrap.com/theme/agency)
 * Copyright 2013-2023 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-agency/blob/master/LICENSE)
 */
//
// Scripts
//

function updateImageSrc() {
  var img = document.getElementsByClassName("responsive-img")[0];
  var footer_img = document.getElementsByClassName("footer-logos")[1];
  var footer_img2 = document.getElementsByClassName("footer-logos")[0];
  if (window.innerWidth <= 767) {
    img.src = "assets/img/Leap of Dance Horizontal Logo.png";
    if (footer_img) {
      footer_img.style.width = "21vw";
    }
    if (footer_img2) {
      footer_img2.style.width = "26vw";
    }
  } else {
    img.src = "assets/img/Leap of dance Logo Vertical.png";
    if (footer_img) {
      footer_img.style.width = "8vw";
    }
    if (footer_img2) {
      footer_img2.style.width = "11vw";
    }
  }
}

window.addEventListener("resize", updateImageSrc);
window.addEventListener("load", updateImageSrc);
window.addEventListener("DOMContentLoaded", updateImageSrc);

window.addEventListener("DOMContentLoaded", (event) => {
  // Navbar shrink function
  var navbarShrink = function () {
    const navbarCollapsible = document.body.querySelector("#mainNav");
    if (!navbarCollapsible) {
      return;
    }
    if (window.scrollY === 0) {
      navbarCollapsible.classList.remove("navbar-shrink");
    } else {
      navbarCollapsible.classList.add("navbar-shrink");
    }
  };

  // Shrink the navbar
  navbarShrink();

  // Shrink the navbar when page is scrolled
  document.addEventListener("scroll", navbarShrink);

  //  Activate Bootstrap scrollspy on the main nav element
  const mainNav = document.body.querySelector("#mainNav");
  if (mainNav) {
    new bootstrap.ScrollSpy(document.body, {
      target: "#mainNav",
      rootMargin: "0px 0px -40%",
    });
  }

  // Collapse responsive navbar when toggler is visible
  const navbarToggler = document.body.querySelector(".navbar-toggler");
  const responsiveNavItems = [].slice.call(
    document.querySelectorAll("#navbarResponsive .nav-link")
  );
  responsiveNavItems.map(function (responsiveNavItem) {
    responsiveNavItem.addEventListener("click", () => {
      if (window.getComputedStyle(navbarToggler).display !== "none") {
        navbarToggler.click();
      }
    });
  });
});
