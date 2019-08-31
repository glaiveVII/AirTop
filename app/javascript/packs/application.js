import "bootstrap";

document.querySelector('.fox-head').addEventListener('click', () => {
  window.location.href = "https://metamask.io"
})


import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('.sweet-alert-demo', {
  title: "YOUR PURR-FECT FRIEND HAS BEEN CREATED",
  text: "This is a great KITTY, isn't it?",
  icon: "success"
});
