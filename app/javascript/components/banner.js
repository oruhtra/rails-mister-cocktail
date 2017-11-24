import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Drink a Mojito", "Enjoy a Bloody Mary", "Have a Sex on the beach"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
