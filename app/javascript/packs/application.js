import "bootstrap";

document.querySelector('.fox-head').addEventListener('click', () => {
  window.location.href = "https://metamask.io"
})


import Swal from 'sweetalert2'

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      Swal(options);
    });
  }
};

initSweetalert('.sweet-alert-demo', {
  title: "YOUR AIRDROP HAS BEEN SEND",
  text: "Check all transactions down below !",
  icon: "success"
});
