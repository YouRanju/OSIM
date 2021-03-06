var month, dad, day, hours, minutes, seconds;
var today;
var distance;
var date, webDate;
var week = ['일', '월', '화', '수', '목', '금', '토'];

function initTime() {
	element = document.getElementById("countdown");
	run = document.getElementById("run");
	dd = document.getElementById("dd");

	date = new Date(Number.parseInt(element.innerHTML));	
	element.innerHTML = (date.getMonth()+1) + '월 ' 
		+ date.getDate() + '일 ' 
		+ week[date.getDay()] + '요일 ' 
		+ (((date.getHours())-13>=0) ? ((date.getHours())%12) : (date.getHours()))+ ' : ' 
		+ date.getMinutes() + ' : ' 
		+ date.getSeconds();
	hours = date.getHours();
	element.innerHTML += (hours-12) >= 0 ? ' [PM]' : ' [AM]';
	webDate = date;
	$('#countdown').fadeIn();

	backgroundChange();

	setInterval(updateTimer, 1000);
}

function timeChecking() {
	date = new Date(webDate.getTime() + 1000);

	month = date.getMonth();
	dad = date.getDate();
	day = date.getDay();
	hours = date.getHours();
	minutes = date.getMinutes();
	seconds = date.getSeconds();

	backgroundChange();
	
	if(webDate.getDay() != day) {
		setTimeout(function() { document.location.reload(); }, 1000);
	}

	webDate = date;
}

function updateTimer(){	
	
	timeChecking();

	element.innerHTML = (month+1) + '월 ' + dad + '일 ' + week[day] + '요일 ' + ((hours-13>=0) ? (hours%12) : (hours)) + ' : ' + minutes + ' : ' + seconds;
	element.innerHTML += (hours-12) >= 0 ? ' [PM]' : ' [AM]'; 
}

function backgroundChange() {	
	if(hours < 5) {
		dd.style.background = " linear-gradient(to top, #304A69, #203954, #19282D 20%, #060315 40%)";
	}
	else if(hours < 8) {
		dd.style.background = "linear-gradient( to top, #F3F9FB, #E9F6F6 , #F1E8E7 , #E2D4DE 98%)";
	}
	else if(hours < 17) {
		dd.style.background = "linear-gradient( to top, #079DD9, #3C9BD5 , #0468BF 88%, #0455BF 99%)";
	}
	else if(hours < 20) {
		dd.style.background = "linear-gradient( to top, #F5B0A5, #EF7C7D , #211919)";
	}
	else {
		dd.style.background = "linear-gradient(to top, #304A69, #203954, #19282D 20%, #060315 40%";
	}
}