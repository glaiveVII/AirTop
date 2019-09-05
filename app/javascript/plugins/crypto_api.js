let endpoint = 'live'
let access_key_julien = 'bf9051bf39b60a1a3bcfe5481621f5b7';
let access_key = 'b93a2f2c2e7899142fc061d693de0dc5'

const apiCall = (selector, options = {}) => {
  // const divRates = document.getElementById("rates");
  const divBTC = document.querySelectorAll(".btc-price");
  const divLTC = document.querySelectorAll(".ltc-price");
  const divETH = document.querySelectorAll(".eth-price");
  // const divLTC = document.getElementById("ltc-price");
  // const divETH = document.getElementById("eth-price");

  if(divBTC || divLTC || divETH) {
    $.ajax({
      url: 'http://api.coinlayer.com/api/' + endpoint + '?access_key=' + access_key,
      dataType: 'jsonp',
      success: function(json) {

          const btcPrice = json.rates.BTC;
          divBTC.forEach((element) => {
            // console.log(element.parentElement.querySelector(".btc-parent").innerHTML);
            let constant = element.parentElement.querySelector(".btc-parent").innerHTML;
            // console.log(constant);
            constant = constant*btcPrice;
            element.insertAdjacentHTML("beforeend", "$" + " " + Math.floor(constant));
          })

          const ltcPrice = json.rates.LTC;
          divLTC.forEach((element) => {
            // console.log(element.parentElement.querySelector(".btc-parent").innerHTML);
            let constant = element.parentElement.querySelector(".ltc-parent").innerHTML;
            // console.log(constant);
            constant = constant*ltcPrice;
            element.insertAdjacentHTML("beforeend", "$" + " " + Math.floor(constant));
          })

          const ethPrice = json.rates.ETH;
          divETH.forEach((element) => {
            // console.log(element.parentElement.querySelector(".btc-parent").innerHTML);
            let constant = element.parentElement.querySelector(".eth-parent").innerHTML;
            // console.log(constant);
            constant = constant*ethPrice;
            element.insertAdjacentHTML("beforeend", "$" + " " + Math.floor(constant));
          })

          // const ltcPrice = json.rates.LTC;
          // divLTC.insertAdjacentHTML("beforeend", ltcPrice);

          // const ethPrice = json.rates.ETH;
          // divETH.insertAdjacentHTML("beforeend", ethPrice);
          // // // exchange rata data is stored in json.rates


          // // target currency is stored in json.target
          // alert(json.target);

          // // timestamp can be accessed in json.timestamp
          // alert(json.timestamp);
          // console.log(json.rates);

      }
    });
  }
};

let result = null;
const apiCallV2 = (value, crypto) => {
    $.ajax({
      url: 'http://api.coinlayer.com/api/' + endpoint + '?access_key=' + access_key,
      dataType: 'jsonp',
      success: function(json) {
          const btcPrice = json.rates.BTC;
          const ltcPrice = json.rates.LTC;
          const ethPrice = json.rates.ETH;

          if (crypto === 'Bitcoin') {
            result = (value + 2) * btcPrice;
          }
          else if (crypto == 'Ethereum') {
            result = (value + 2) * ethPrice;
          }
          else if (crypto == 'Litecoin') {
            result = (value + 2) * ltcPrice;
          }

      }
    });
    return result;
}

export { apiCall };
export { apiCallV2 };
