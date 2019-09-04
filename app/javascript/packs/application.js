import "bootstrap";

// document.querySelector('.fox-head').addEventListener('click', () => {
//   window.location.href = "https://metamask.io"
// })

import { initSweetalert } from '../plugins/init_sweetalert';
import { apiCall } from '../plugins/crypto_api';
import { apiCallV2 } from '../plugins/crypto_api';

function validateEmail(mail)
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))
  {
    return (true)
  }
    return (false)
}

const email = document.querySelector('#invite_email');

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
  });
};

const invite = document.querySelector('#invite_file_csv');

if (invite) {

  document.getElementById('invite_file_csv').addEventListener('change', function(e) {
    if (e.value != '') {
      document.getElementById('invite-button').disabled = false;
    }
  });
};


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

// keep the code below please !
// initSweetalert('.sweet-alert-release', {
//   icon: "http://giphygifs.s3.amazonaws.com/media/p1v7773GGUJH2/giphy.gif",
//   buttons: false,
//   customClass: 'sweet-gif',
//   width: '100px'
// });

apiCall();

const button = document.querySelector('.clickme');

if (button) {

  button.addEventListener('input', function(e) {
    // console.log(document.getElementById('airdrop_crypto').value);
    // console.log(this.value);
    let result = apiCallV2(this.value, document.getElementById('airdrop_crypto').value);
    // console.log(result);
    document.querySelector(".form-create-price").innerHTML = "Your airdrop worth" + " " + "$" + " " + Math.floor(result);
    // document.querySelector(".form-create-price").insertAdjacentHTML("beforeend", "$" + " " + Math.floor(result));
  });
};






