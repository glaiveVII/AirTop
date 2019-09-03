import "bootstrap";

// document.querySelector('.fox-head').addEventListener('click', () => {
//   window.location.href = "https://metamask.io"
// })

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

let url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest"
fetch(url, {
  headers: {
    'X-CMC_PRO_API_KEY': '8ff0e1b5-c514-4e72-8c0d-567482f303a6'
  }
}).then(response => response.json()).then((data) => {
  console.log(data);
})

const rp = require('request-promise');
const requestOptions = {
  method: 'GET',
  uri: 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest',
  qs: {
    'start': '1',
    'limit': '1',
    'convert': 'USD,BTC'
  },
  headers: {

  },
  json: true,
  gzip: true
};

rp(requestOptions).then(response => {
  console.log('API call response:', response);
}).catch((err) => {
  console.log('API call error:', err.message);
});
