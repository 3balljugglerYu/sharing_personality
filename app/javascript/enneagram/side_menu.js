function sideMenu(){
  document.querySelector('.hide-checkbox'),addEventListener('change',()=>{
    var sideBarMenu = document.getElementById("menu");
    var result = document.getElementById("chart-entire");
    var result2 = document.getElementById("chart-entire2");

    if(sideBarMenu.checked){
      result.id = "chart-entire2";
    } else {
      result2.id = "chart-entire";
    }
  })
}window.addEventListener("load", sideMenu);