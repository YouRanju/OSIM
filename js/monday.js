function monday() {
	element = document.getElementById("countdown");
	endElement = document.getElementById("endTime");
	distance = document.getElementById("distance");
	
	nextday = distance.innerHTML;
	disting();
	
	setInterval(endTime, 1000);
	
	OneHourleft = (3.67 * date.getHours()) + (3.67 / 60 * date.getMinutes()) + (3.67 / 60 / 60 * date.getSeconds());
	
	OneHourleft = OneHourleft < 2 ? 2 : OneHourleft;
	
	$('#run').css('left', '90%');
	$('#zom').animate({right: '-=' + OneHourleft+'%'});
	$('#youInfo').animate({right: '-=' + (OneHourleft+1) + '%'});
	
	setInterval(runLeft, 10000);
	setInterval(disting, 1000);
	$('#distance').fadeIn(500);
	setInterval(shake,10);
}

function endTime() {

	ehours = 23 - hours;
	eminutes = 59 - minutes;
	eseconds = 60 - seconds;
	
	eseconds = eseconds == 60 ? 0 : eseconds;
	eminutes = eseconds == 0 ? eminutes+1 : eminutes;
	
	eminutes = eminutes == 60 ? 0 : eminutes;
	ehours = (eminutes == 0 && eseconds == 0) ? ehours+1 : ehours;
	
	endElement.innerHTML = ehours + " : " + eminutes + " : " + eseconds; 
}

function runLeft() {
	$('#zom').animate({right:('-=0.012%')});
}

function disting() {
	today = date.getTime();
	
	distance.innerHTML = '남은거리 : ' + ( Math.floor(((nextday - today) / 1000)/10000) + '.' + ((nextday - today) / 1000)%10000 ) +" KM";
	
	dist = $('#run').css('left').replace('px', '') - $('#zom').css('left').replace('px', '');
	
	if(dist < 500) {
		$('#distance').css('right', (Number.parseInt($('#zom').css('right').replace('px', '')) + 200)+ 'px' );
	} else {
		$('#distance').animate({right: ((dist/2)-distance.style.width.replace('px', ''))+'px'} );
	}
}

var flag = 0.4;
function shake() {
	flag = flag * -1;
	
	$('#run').animate({left:('+=' +flag+'%')});
	$('#run').animate({top:('+=' +flag+'%')});
	$('#zom').animate({left:('+=' +flag+'%')});
	$('#zom').animate({top:('+=' +flag+'%')});
}