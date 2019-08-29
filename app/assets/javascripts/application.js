//= require rails-ujs
//= require_tree .
const animationContainer = document.getElementById("animation-container");
const animationButton = document.getElementById("animation-button");
const animationEntrancesArray = ["bounceIn", "bounceInDown", "bounceInLeft", "bounceInRight", "bounceInUp", "fadeIn", "fadeInDown", "fadeInLeft", "fadeInRight", "fadeInUp", "flipInX", "flipInY", "lightSpeedIn", "rotateIn", "rotateInDownLeft", "rotateInDownRight", "rotateInUpLeft", "rotateInUpRight", "slideInUp", "slideInLeft", "slideInRight", "slideInDown", "zoomIn", "zoomInDown", "zoomInLeft", "zoomInRight", "zoomInUp"];
const colorsArray = ["#ff6384", "#36a2eb", "#ffce56", "#4bc0c0", "#9966ff", "#ff9f40", "#333333", "#ff99cc", "#004c99", "#999900"];
let colorsArrayIndex = 0;

// Event Listeners
animationButton.addEventListener("click", animationButtonClick);

function animationButtonClick(event) {
  const animationContainerWidth = animationContainer.clientWidth;
  const animationContainerHeight = animationContainer.clientHeight;
  const animatedIconFontSize = window.innerWidth < 767 ? 40 : 50;

  const xPosRand = Math.floor(Math.random()*(animationContainerWidth-animatedIconFontSize));
  const yPosRand = Math.floor(Math.random()*(animationContainerHeight-animatedIconFontSize));

  const animationEntrance = animationEntrancesArray[Math.floor(Math.random()*animationEntrancesArray.length)];

  const newElement = document.createElement("i");
  newElement.classList.add("fas", "fa-thumbs-up", "animated-icon", "animated", animationEntrance);
  newElement.setAttribute("style", `left:${xPosRand}px; top:${yPosRand}px; color: ${colorsArray[colorsArrayIndex]};`);
  colorsArrayIndex = (colorsArrayIndex+1)%colorsArray.length;

  animationContainer.appendChild(newElement);

  setTimeout(() => {
    newElement.classList.remove(animationEntrance);
    newElement.classList.add("zoomOut");
    setTimeout(() => {
      newElement.remove();
    }, 1000);
  }, 1500);
}
