//hinh nhu k can include
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