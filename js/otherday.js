function otherday() {
	element = document.getElementById("countdown");
	distance = document.getElementById("distance");
	
	nextMon = distance.innerHTML;
	
	day = date.getDay();
	day = day == 0 ? 6 : day-1;

	OneDayleft = ((12.57 * day) + (12.57 / 24 * date.getHours()) + 
			(12.57 / 24 / 60 * date.getMinutes()) + (12.57 /24 / 60 / 60 * date.getSeconds()));
	
	OneDayleft = OneDayleft < 2 ? 2 : OneDayleft;
	
	$('#zom').animate({left: OneDayleft+'%'});
	$('#youInfo').animate({left: (OneDayleft-1) + '%'});
	
	$('#run').css('left', "90%");
	$('#target').css('left', '90%');
	
	setInterval(runright, 10000);
	setInterval(disted, 1000);
	setInterval(shake, 1);
}

function runright() {
	$('#zom').animate({right:('+=0.000136%')});
}

function disted() {
	today = date.getTime();
	
	distance.innerHTML = '남은거리 : ' + ( Math.floor(((nextMon - today)/ 1000)/10000) + '.' + ((nextMon - today) / 1000)%10000 ) + " KM";
	
	dist = $('#run').css('left').replace('px', '') - $('#zom').css('left').replace('px', '');
	
	if(dist < 500) {
		$('#distance').css('left', (Number.parseInt($('#zom').css('left').replace('px', '')) - 300)+ 'px' );
	} else {
		$('#distance').animate({right: ((dist/2)+distance.style.width.replace('px', ''))+'px'} );
	}
	
	$('#distance').fadeIn(100);
}

var flag = 0.4;

function shake() {
	flag = flag * -1;
	
	$('#run').animate({left:('+=' +flag+'%')});
	$('#run').animate({top:('+=' +flag+'%')});
	$('#zom').animate({left:('+=' +flag+'%')});
	$('#zom').animate({top:('+=' +flag+'%')});
}
