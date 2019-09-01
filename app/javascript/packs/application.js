import "bootstrap";

document.querySelector('.fox-head').addEventListener('click', () => {
  window.location.href = "https://metamask.io"
})


import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('.sweet-alert-demo', {
  title: "YOUR AIRDROP HAS BEEN SEND",
  text: "Check all transactions down below !",
  icon: "success"
});
