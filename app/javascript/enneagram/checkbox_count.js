function typeCount() {
  document.querySelector('#btn').addEventListener('click', ()=>{
    var type1 = document.querySelectorAll('.checks_one:checked').length;
    var type2 = document.querySelectorAll('.checks_two:checked').length;
    var type3 = document.querySelectorAll('.checks_three:checked').length;
    var type4 = document.querySelectorAll('.checks_four:checked').length;
    var type5 = document.querySelectorAll('.checks_five:checked').length;
    var type6 = document.querySelectorAll('.checks_six:checked').length;
    var type7 = document.querySelectorAll('.checks_seven:checked').length;
    var type8 = document.querySelectorAll('.checks_eight:checked').length;
    var type9 = document.querySelectorAll('.checks_nine:checked').length;

    const countSumA = document.getElementById('sum_one')
    const countSumB = document.getElementById('sum_two')
    const countSumC = document.getElementById('sum_three')
    const countSumD = document.getElementById('sum_four')
    const countSumE = document.getElementById('sum_five')
    const countSumF = document.getElementById('sum_six')
    const countSumG = document.getElementById('sum_seven')
    const countSumH = document.getElementById('sum_eight')
    const countSumI = document.getElementById('sum_nine')

    countSumA.value = type1
    countSumB.value = type2
    countSumC.value = type3
    countSumD.value = type4
    countSumE.value = type5
    countSumF.value = type6
    countSumG.value = type7
    countSumH.value = type8
    countSumI.value = type9

    new Chart(document.getElementById("myChart"),{
      type: 'radar',
      data: {
        labels: ["完璧主義者","献身家","達成者","芸術家","研究者","堅実家","楽天家","統率者","調停者"],
        datasets: [{
          label: '診断結果',
          data: [type1,type2,type3,type4,type5,type6,type7,type8,type9],
          borderColor: "rgb(143, 73, 73)",
          backgroundColor:"rgba(88, 25, 25, 0.253)",
          borderWidth: 2,
          pointStyle: "circle",
          pointRadius: 3,
          pointBorderWidth: 2,
          pointBackgroundColor: "rgb(143, 73, 73)"
        }]
      },
      options: {
        responsive: true,
        legend:{
          position:'bottom'
        },
        scale: {
          pointLabels:{
            fontSize: 16,
            fontColor: "rgb(129, 109, 109)"
          },
          ticks: {
            min: 0,
            max: 10,
            stepSize: 2
          },
          gridLines:{
            display: true,
            color: "rgb(129, 109, 109)"
          }
        }
      }
    })

    // 「診断する」ボタンを押すことで、レーダーチャートが表示されるよう設定
    var result = document.getElementById("result")
    result.id = "result2"
    const end = document.getElementById('myChart')
    end.scrollIntoView(true);
  })

  // バリデーションになった場合、結果は表示されるように設定
  var target = document.getElementById('error-alert')
  if (target.classList.contains('error-alert') == true){
    result.id = "result2"
  }
}
window.addEventListener("load", typeCount)