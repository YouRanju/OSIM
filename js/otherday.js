window.onload = init;

function init() {
	element = document.getElementById("countdown");
	
	date = new Date(Number.parseInt(element.innerHTML));

	setInterval(endTime, 1000);
	
	setPosition();
	setInterval(runLeft, 10000);
	distance.innerHTML = (distance.innerHTML.replace('KM', '') - today) + " KM";
}

function setPosition() {
	timeChecking();	
		
	day = day == 0 ? 6 : day-1;
	
	OneDayleft = 100 - ((14.28 * day) + (14.28 / 24 * hours) + 
			(14.28 / 24 / 60 * minutes) + (14.28 / 24 / 60 / 60 * seconds));
	
	$('#run').animate({left: OneDayleft+"%"});	
}

if(day != 1 && run.style.left.replace('%','') <= OneDayleft+20) {
	dist = $('#run').css('left').replace('px', '') - $('#zom').css('left').replace('px', '');
	
	if(dist < 150) {
		$('#distance').animate({left: '300px'} );
	} else {
		$('#distance').animate({left: ((dist/2)-distance.style.width.replace('px', ''))+'px'} );
	}
	
	$('#distance').fadeIn(100);
}

function runLeft() {
	if(day != 1) {
		$('#run').animate({left:('-=0.002%')});
		
		if($('#run').css.left <= '2%') {
			$('#run').css.left = '2%';
		}
		
	} else {
		$('#run').animate({left:('+=0.0011%')});
		
		if($('#run').css.left >= '90%') {
			$('#run').css.left = '90%';
		}
	}	
}
//45
