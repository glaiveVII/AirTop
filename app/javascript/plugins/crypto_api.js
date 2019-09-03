let endpoint = 'live'
let access_key = 'bf9051bf39b60a1a3bcfe5481621f5b7';


const apiCall = (selector, options = {}) => {
  // const divRates = document.getElementById("rates");
  const divBTC = document.getElementById("btc-price");
  const divLTC = document.getElementById("ltc-price");
  const divETH = document.getElementById("eth-price");

  if(divBTC || divLTC || divETH) {
    $.ajax({
      url: 'http://api.coinlayer.com/api/' + endpoint + '?access_key=' + access_key,
      dataType: 'jsonp',
      success: function(json) {

          const btcPrice = json.rates.BTC;
          divBTC.insertAdjacentHTML("beforeend", btcPrice);

          const ltcPrice = json.rates.LTC;
          divLTC.insertAdjacentHTML("beforeend", ltcPrice);

          const ethPrice = json.rates.ETH;
          divETH.insertAdjacentHTML("beforeend", ethPrice);
          // // exchange rata data is stored in json.rates


          // // target currency is stored in json.target
          // alert(json.target);

          // // timestamp can be accessed in json.timestamp
          // alert(json.timestamp);
          // console.log(json.rates);

      }
    });
  }
};

export { apiCall };
