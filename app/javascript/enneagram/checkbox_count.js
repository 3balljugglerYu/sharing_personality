function countCheckedCheckbox(elements, sumElement, logname) {
  let count = 0;
  for (let i = 0; i < elements.length; i++){
    if (elements[i].checked){
      count = count + 1;
    }
  }

  console.log(`${logname}の合計は${count}です`);
  sumElement.value = count;

}

function checkbox() {

  const checksA = document.getElementsByClassName("checks_one");
  const checksB = document.getElementsByClassName("checks_two");
  const checksC = document.getElementsByClassName("checks_three");
  const checksD = document.getElementsByClassName("checks_four");
  const checksE = document.getElementsByClassName("checks_five");
  const checksF = document.getElementsByClassName("checks_six");
  const checksG = document.getElementsByClassName("checks_seven");
  const checksH = document.getElementsByClassName("checks_eight");
  const checksI = document.getElementsByClassName("checks_nine");

  const btn = document.getElementById("btn")
  btn.addEventListener("click", () => {

    const countSumA = document.getElementById("sum_one")
    const countSumB = document.getElementById("sum_two")
    const countSumC = document.getElementById("sum_three")
    const countSumD = document.getElementById("sum_four")
    const countSumE = document.getElementById("sum_five")
    const countSumF = document.getElementById("sum_six")
    const countSumG = document.getElementById("sum_seven")
    const countSumH = document.getElementById("sum_eight")
    const countSumI = document.getElementById("sum_nine")

    countCheckedCheckbox(checksA, countSumA, "タイプA");
    countCheckedCheckbox(checksB, countSumB, "タイプB");
    countCheckedCheckbox(checksC, countSumC, "タイプC");
    countCheckedCheckbox(checksD, countSumD, "タイプD");
    countCheckedCheckbox(checksE, countSumE, "タイプE");
    countCheckedCheckbox(checksF, countSumF, "タイプF");
    countCheckedCheckbox(checksG, countSumG, "タイプG");
    countCheckedCheckbox(checksH, countSumH, "タイプH");
    countCheckedCheckbox(checksI, countSumI, "タイプI");

  })
}
window.addEventListener("load",checkbox)