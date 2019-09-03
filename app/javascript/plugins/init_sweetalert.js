import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', (e) => {
      e.preventDefault();
      swal(options).then(() => {
        document.querySelector('.sweet-alert-submit').click();
      })
    });
  }
};

export { initSweetalert };
