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

    // 診断結果のレーダーチャートを出力
    new Chart(document.getElementById("myChart"),{
      type: 'radar',
      data: {
        labels: ["完璧主義者","献身家","達成者","芸術家","研究者","堅実家","楽天家","統率者","調停者"],
        datasets: [{
          label: '診断結果',
          data: [type1,type2,type3,type4,type5,type6,type7,type8,type9],
          borderColor: "#ff0000",
          backgroundColor:"#ff00006c",
          borderWidth: 2,
          pointStyle: "circle",
          pointRadius: 3,
          pointBorderWidth: 2,
          pointBackgroundColor: "#ff0000"
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
            fontColor: "#000000"
          },
          ticks: {
            min: 0,
            max: 10,
            stepSize: 2
          },
          gridLines:{
            display: true,
            color: "#000000"
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

// 自身のレーダーチャート
function indexRadarChart(){
  var indexChart = new Chart(document.getElementById("indexChart"),{
    type: 'radar',
    data: {
      labels: ["完璧主義者","献身家","達成者","芸術家","研究者","堅実家","楽天家","統率者","調停者"],
      datasets: [{
        label: '診断結果',
        data: [
          gon.user_name.perfectionist_sum,
          gon.user_name.giver_sum,
          gon.user_name.achiever_sum,
          gon.user_name.individualist_sum,
          gon.user_name.investigator_sum,
          gon.user_name.skeptic_sum,
          gon.user_name.enthusiast_sum,
          gon.user_name.challenger_sum,
          gon.user_name.peacemaker_sum],
        borderColor: "rgba(68, 0, 255, 0.566)",
        backgroundColor:"rgba(0, 255, 255, 0.1)",
        borderWidth: 2,
        pointStyle: "circle",
        pointRadius: 3,
        pointBorderWidth: 2,
        pointBackgroundColor: "rgb(0, 0, 255)"
      }]
    },
    options: {
      responsive: false,
      legend:{
        display: false
      },
      scale: {
        pointLabels:{
          fontSize: 8,
          fontColor: "rgb(71, 0, 165)"
        },
        ticks: {
          min: 0,
          max: 10,
          stepSize: 2
        },
        gridLines:{
          display: true,
          color: "rgba(71, 0, 165, 0.114)"
        }
      }
    }
  })
  if( window.matchMedia('(min-width: 1000px)').matches) {
    indexChart.options.scale.pointLabels.fontSize = 10;
  } else if ( window.matchMedia('(min-width: 500px)').matches) {
    indexChart.options.scale.pointLabels.fontSize = 13;
  };
  var chartStyle = document.getElementById("indexChart")
  chartStyle.removeAttribute('style');
}
window.addEventListener("load", indexRadarChart)


// 各ユーザーのレーダーチャート
function showRadarChart(){
  var showChart = new Chart(document.getElementById("showChart"),{
    type: 'radar',
    data: {
      labels: ["完璧主義者","献身家","達成者","芸術家","研究者","堅実家","楽天家","統率者","調停者"],
      datasets: [{
        label: '診断結果',
        data: [
          gon.user_name.perfectionist_sum,
          gon.user_name.giver_sum,
          gon.user_name.achiever_sum,
          gon.user_name.individualist_sum,
          gon.user_name.investigator_sum,
          gon.user_name.skeptic_sum,
          gon.user_name.enthusiast_sum,
          gon.user_name.challenger_sum,
          gon.user_name.peacemaker_sum],
        borderColor: "#ff0000",
        backgroundColor:"#ff00006c",
        borderWidth: 2,
        pointStyle: "circle",
        pointRadius: 3,
        pointBorderWidth: 2,
        pointBackgroundColor: "#ff0000"
      }]
    },
    options: {
      responsive: true,
      legend:{
        display: false
      },
      scale: {
        pointLabels:{
          fontSize: 8,
          fontColor: "#000000"
        },
        ticks: {
          min: 0,
          max: 10,
          stepSize: 2
        },
        gridLines:{
          display: true,
          color: "#000000"
        }
      }
    }
  })
  if( window.matchMedia('(min-width: 1000px)').matches) {
    showChart.options.scale.pointLabels.fontSize = 10;
  } else if ( window.matchMedia('(min-width: 500px)').matches) {
    showChart.options.scale.pointLabels.fontSize = 13;
  };
  var chartStyle = document.getElementById("showChart")
  chartStyle.removeAttribute('style');
}
window.addEventListener("load", showRadarChart)