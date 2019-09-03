import "bootstrap";

// document.querySelector('.fox-head').addEventListener('click', () => {
//   window.location.href = "https://metamask.io"
// })

import { initSweetalert } from '../plugins/init_sweetalert';
import { apiCall } from '../plugins/crypto_api';

function validateEmail(mail)
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))
  {
    return (true)
  }
    return (false)
}

const email = document.getElementById('invite_email')
if (email) {

  email.addEventListener('input', function(e) {
    if (validateEmail(e.target.value)) {
      document.querySelector('.email-error').style.display = 'none';
      document.querySelector('.email-correct').style.display = 'block';
      document.getElementById('invite-button').disabled = false;
    } else {
      document.querySelector('.email-error').style.display = 'block';
      document.querySelector('.email-correct').style.display = 'none';
    }
  })
}

document.getElementById('invite_file_csv').addEventListener('change', function(e) {
  if (e.value != '') {
    document.getElementById('invite-button').disabled = false;
  }
});


initSweetalert('.sweet-alert-demo', {
  title: "YOUR INVITATIONS HAVE BEEN SENT",
  text: "Check all transactions down below !",
  icon: "success"
});

// homage page initiate search
initSweetalert('.sweet-alert-release', {
  icon: "http://giphygifs.s3.amazonaws.com/media/p1v7773GGUJH2/giphy.gif",
  buttons: false,
  customClass: 'sweet-gif',
  width: '100px'
});

apiCall();

const button = document.querySelector('#clickme');
const audio = new Audio('sound.mp3');

button.addEventListener('click', (e) => {
  e.target.classList.add('disabled');
  e.target.innerText = 'Bingo!';
  audio.play();
});


























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

