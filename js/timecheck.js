window.onload = init;
var cnt = 0;
var month, dad, day, hours, minutes, seconds;
var today;
var distance;
var date;

function init() {
	element = document.getElementById("countdown");
	endElement = document.getElementById("endTime");
	run = document.getElementById("run");
	distance = document.getElementById("distance");
	
	setPosition();
	updateTimer();	
	
	setInterval(updateTimer, 1000);
	if(day == 1) setInterval(endTime, 1000);
	setInterval(runLeft, 13440);
}

function timeChecking() {
	date = new Date();
	
	month = date.getMonth();
	dad = date.getDate();
	day = date.getDay();
	hours = date.getHours();
	minutes = date.getMinutes();
	seconds = date.getSeconds();

	today = date.getMilliseconds();

	backgroundChange();
	
	distance.innerHTML = (distance.innerHTML.replace('KM', '') - today) + " KM";
}

function setPosition() {
	timeChecking();
	
	if(day != 1) {		
		
		day = day == 0 ? 6 : day-1;
		
		OneDayleft = 100 - ((14.28 * day) + (14.28 / 24 * hours) + 
				(14.28 / 24 / 60 * minutes) + (14.28 / 24 / 60 / 60 * seconds));
		
		$('#run').animate({left: OneDayleft+"%"});	
	} else {
		var OneHourleft = ((3.75 * hours) + (3.75 / 60 * minutes) + (3.75 / 60 / 60 * seconds) );
		$('#run').animate({left: OneHourleft+'%'});
	}
}

function updateTimer(){	
	var week = ['일', '월', '화', '수', '목', '금', '토'];
	
	timeChecking();

	element.innerHTML = (month+1) + '월 ' + dad + '일 ' + week[day] + '요일 ' + (hours%12) + ' : ' + minutes + ' : ' + seconds;
	
	if(day == 1 ) endTime();
	
	if(run.style.left.replace('%','') <= OneDayleft+20) {

		dist = $('#run').css('left').replace('px', '') - $('#zom').css('left').replace('px', '');
		
		$('#distance').animate({left: ((dist/2)-distance.style.width.replace('px', ''))+'px'} );
		$('#distance').fadeIn(100);
	}
}

function endTime() {

	timeChecking();
	
	ehours = 24 - hours;
	eminutes = 60 - minutes;
	eseconds = 60 - seconds;
	
	endElement.innerHTML = ehours + " : " + eminutes + " : " + eseconds; 
}

function runLeft() {
	if(day != 1) {
		$('#run').animate({left:('-=0.002%')});
		
		if($('#run').css.left <= '2%') {
			$('#run').css.left = '2%';
		}
		
	} else {
		$('#run').animate({left:('+=0.0136%')});
		
		if($('#run').css.left >= '90%') {
			$('#run').css.left = '90%';
		}
	}	
}
//45

function backgroundChange() {
	dd = document.getElementById("dd");
	
	if(hours < 5) {
		dd.style.background = "linear-gradient( to top, #304A69 , #203954 , #19282D , #060315 50%)";
	}
	else if(hours < 8) {
		dd.style.background = "linear-gradient( to top, #F3F9FB, #E9F6F6 , #F1E8E7 , #E2D4DE 98%)";
	}
	else if(hours < 18) {
		dd.style.background = "linear-gradient( to top, #079DD9, #3C9BD5 , #0468BF 88%, #0455BF 99%)";
	}
	else if(hours < 20) {
		dd.style.background = "linear-gradient( to top, #F5B0A5, #EF7C7D , #211919)";
	}
}