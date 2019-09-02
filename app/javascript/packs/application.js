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

// homage page initiate search
initSweetalert('#my-btn', {
  icon: "https://media.giphy.com/media/11l5hkwH1zcsBG/giphy.gif",
  buttons: false,
  customClass: 'sweet-gif',
  width: '100px'
});
