$(function(){
var datas = $('.data').val();
var data = JSON.parse(datas);

function countDownTimer(data, counter) {
  var html = `<div class="counter-title">${data.title}まで
                <p class="timer"> あと </p>
                <span id="day">${counter[0]}日</span>
                <span id="hour">${counter[1]}時間</span> 
                <span id="min">${counter[2]}分</span> 
                <span id="sec">${counter[3]}秒</span> 
              </div>`
  return html
}

var countdown = function(due) {
  var now = new Date();

  var rest = due.getTime() - now.getTime();
  var sec = Math.floor(rest / 1000) % 60;
  var min = Math.floor(rest / 1000 / 60) % 60;
  var hours = Math.floor(rest / 1000 /60 / 60) % 24;
  var days = Math.floor(rest / 1000 /60 / 60 / 24);
  var count = [days, hours, min, sec];

  return count;
}

var recalc = function(){
  $('.calender-left').empty();
  data.forEach(function(day){
  var goal = new Date(day.day);
  var counter = countdown(goal);
  var html = countDownTimer(day, counter);
  $('.calender-left').append(html);
})
reload();
}

/*var recalc = function() {
  var counter = countdown(goal);
  document.getElementById('day').textContent = counter[0];
  document.getElementById('hour').textContent = counter[1];
  document.getElementById('min').textContent = counter[2];
  document.getElementById('sec').textContent = counter[3];
  refresh();
}*/

var reload = function() {
  setInterval(recalc, 1000);
}

recalc();
});