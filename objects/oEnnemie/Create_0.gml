//initial position

x = room_width - 100
y = room_height/2


//

if room = rTitleScreen{
speedy = 20;
}

if room != rTitleScreen{
	
	switch(global.difficulty){
	
		case DIFFICULTY.EASY :
			speedy =13
		break;
		
		case DIFFICULTY.MEDIUM :
			speedy = 17
		break;
		
		case DIFFICULTY.HARD :
			speedy = 20
		break;
			
		case DIFFICULTY.MOUSEMODE:
			speedy = 26.5
		break;
	
	}
}

dontmove = false
timerdm=0
fireshottimer = 0