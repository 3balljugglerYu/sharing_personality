var current_user = 0;

function pulldown(){
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownChild = document.querySelectorAll(".pull-down-list")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#0011ff")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#0011ff")
  })

  pullDownButton.addEventListener('click', function(){
    if (pullDownParents.getAttribute("style") == "display:block;"){
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownChild.forEach(function(list){
    list.addEventListener('click', function(){
      value = list.getAttribute("data-id");
      if (current_user === value){
        current_user = 0;
        var indexChart = new Chart(document.getElementById("indexChart"),{
          type: 'radar',
          data: {
            labels: ["完璧主義者","献身家","達成者","芸術家","研究者","堅実家","楽天家","統率者","調停者"],
            datasets: [{
              label: '診断結果',
              data: [
                gon.current_user.perfectionist_sum,
                gon.current_user.giver_sum,
                gon.current_user.achiever_sum,
                gon.current_user.individualist_sum,
                gon.current_user.investigator_sum,
                gon.current_user.skeptic_sum,
                gon.current_user.enthusiast_sum,
                gon.current_user.challenger_sum,
                gon.current_user.peacemaker_sum],
              borderColor: "rgba(68, 0, 255, 0.566)",
              backgroundColor:"rgba(0, 255, 255, 0.4)",
              borderWidth: 2,
              pointStyle: "circle",
              pointRadius: 3,
              pointBorderWidth: 2,
              pointBackgroundColor: "rgb(0, 0, 255)"
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
          indexChart.options.scale.pointLabels.fontSize = 15;
        } else if ( window.matchMedia('(min-width: 500px)').matches) {
          indexChart.options.scale.pointLabels.fontSize = 13;
        };
        var chartStyle = document.getElementById("indexChart");
        chartStyle.removeAttribute('style');
      } else {
        current_user = value;
        fetch("/fetch_user", {
          method: "POST",
          headers: {
            "Content-Type":"application/json"
          },
          body: JSON.stringify({
            user_id:value
          })
        }).then((response)=>{
          return response.json();
        }).then((result)=>{
          var indexChart = new Chart(document.getElementById("indexChart"),{
            type: 'radar',
            data: {
              labels: ["完璧主義者","献身家","達成者","芸術家","研究者","堅実家","楽天家","統率者","調停者"],
              datasets: [{
                label: '診断結果',
                data: [
                  gon.current_user.perfectionist_sum,
                  gon.current_user.giver_sum,
                  gon.current_user.achiever_sum,
                  gon.current_user.individualist_sum,
                  gon.current_user.investigator_sum,
                  gon.current_user.skeptic_sum,
                  gon.current_user.enthusiast_sum,
                  gon.current_user.challenger_sum,
                  gon.current_user.peacemaker_sum],
                borderColor: "rgba(68, 0, 255, 0.566)",
                backgroundColor:"rgba(0, 255, 255, 0.4)",
                borderWidth: 2,
                pointStyle: "circle",
                pointRadius: 3,
                pointBorderWidth: 2,
                pointBackgroundColor: "rgb(0, 0, 255)"
              },{
                label: '診断結果',
                data: [
                  result.perfectionist_sum,
                  result.giver_sum,
                  result.achiever_sum,
                  result.individualist_sum,
                  result.investigator_sum,
                  result.skeptic_sum,
                  result.enthusiast_sum,
                  result.challenger_sum,
                  result.peacemaker_sum],
                borderColor: "rgba(255, 0, 0, 0.541)",
                backgroundColor:"rgba(255, 0, 0, 0.151)",
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
            scale:{
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
          indexChart.options.scale.pointLabels.fontSize = 15;
        } else if ( window.matchMedia('(min-width: 500px)').matches) {
          indexChart.options.scale.pointLabels.fontSize = 13;
        };
        var chartStyle = document.getElementById("indexChart");
        chartStyle.removeAttribute('style');
      })
    }
    })
  })
}window.addEventListener("load", pulldown)

