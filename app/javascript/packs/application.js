import "bootstrap";

// document.querySelector('.fox-head').addEventListener('click', () => {
//   window.location.href = "https://metamask.io"
// })

import { initSweetalert } from '../plugins/init_sweetalert';
import { apiCall } from '../plugins/crypto_api';


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

apiCall();
































// do not look after this !!!!!!!!!
// do not look after this !!!!!!!!!
// do not look after this !!!!!!!!!
// do not look after this !!!!!!!!!
// do not look after this !!!!!!!!!

// let endpoint = 'live'
// let access_key = 'bf9051bf39b60a1a3bcfe5481621f5b7';


//   $.ajax({
//     url: 'http://api.coinlayer.com/api/' + endpoint + '?access_key=' + access_key,
//     dataType: 'jsonp',
//     success: function(json) {

//         const btcRate = json.rates.BTC
//         divRates.insertAdjacentHTML("beforeend", btcRate);
//         // // exchange rata data is stored in json.rates


//         // // target currency is stored in json.target
//         // alert(json.target);

//         // // timestamp can be accessed in json.timestamp
//         // alert(json.timestamp);
//         console.log(json.rates.BTC);
//         console.log(json.rates.LTC);
//         console.log(json.rates.ETH);

//     }
//   });

