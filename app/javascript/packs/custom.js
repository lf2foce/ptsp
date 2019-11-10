import 'bootstrap';
import './project.scss';

require("@rails/ujs").start()
require("turbolinks").start()

require("./project.js") //from packs/project.js

document.addEventListener('turbolinks:load', function () {
	//its work 
console.log("custom.js")
})


//its work 
function dosmth() { 
  alert('hello'); 
}
document.addEventListener('turbolinks:load', () => {  
  const clickButton = document.getElementById("button-click");  

  clickButton.addEventListener("click", dosmth); 
});