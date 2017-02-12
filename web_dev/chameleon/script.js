console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);


function colorText(event) {
  event.target.style.color = "blue";
}

var paragraph = document.getElementById("about-my-pet");
paragraph.addEventListener("click", colorText);