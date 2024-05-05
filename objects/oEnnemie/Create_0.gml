//initial position

x = room_width - 100
y = room_height/2


//

if room = rTitleScreen{
speedy = 20;
}

if room != rTitleScreen{
	
	switch(global.difficulty){
	
		case 1 :
			speedy =13
		break;
		
		case 2 :
			speedy = 17
		break;
		
		case 3 :
			speedy = 20
		break;	
	}
}

dontmove = false
timerdm=0
fireshottimer = 0