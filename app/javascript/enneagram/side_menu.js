function sideMenu(){
  document.querySelector('.hide-checkbox'),addEventListener('change',()=>{
    var sideBarMenu = document.getElementById("menu");
    var chartDisplay = document.getElementById("chart-entire");
    var chartHide = document.getElementById("chart-entire2");

    if(sideBarMenu.checked){
      chartDisplay.id = "chart-entire2";
    } else {
      chartHide.id = "chart-entire";
    }
  })
}window.addEventListener("load", sideMenu);