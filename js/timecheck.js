window.onload = init;
var cnt = 0;

function init() {
	 element = document.getElementById("countdown");
	 run = document.getElementById("run");
	 setInterval(updateTimer, 1000);
}

function updateTimer(){
	 var date = new Date();
	 var month, dd, day, hours, minutes, seconds;
	 var week = ['일', '월', '화', '수', '목', '금', '토'];
	 
	 month = date.getMonth();
	 dd = date.getDate();
	 day = date.getDay();
	 hours = date.getHours();
	 minutes = date.getMinutes();
	 seconds = date.getSeconds();

	 element.innerHTML = month+1 + '월 ' + dd + '일 ' + week[day] + '요일 ' + hours + ' : ' + minutes + ' : ' + seconds;
}
