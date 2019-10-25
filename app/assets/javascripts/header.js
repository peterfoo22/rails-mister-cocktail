const imageChanger = () => {
  const corner = document.querySelector("#topcorner")
  corner.addEventListener('onmouseover', (event) => {
  corner.setAttribute('src', "https://res.cloudinary.com/peterfoo22/image/upload/v1571991106/g8kfuilwua5mvrhsbaph.jpg")
});

}

export { imageChanger };
