console.log("The script is running!");

function colorText(event) {
  event.target.style.color = "red";
}

var paragraph = document.getElementsByClassName("intro");
paragraph.addEventListener("click", colorText);