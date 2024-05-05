//initial position

x = room_width - 100
y = room_height/2


//
	
switch(global.difficulty){
	
		case DIFFICULTY.EASY :
			speedy = 9
		break;
	
		case DIFFICULTY.MEDIUM :
			speedy = 11
		break;
	
		case DIFFICULTY.HARD :
			speedy=13
		break;	
	}

dontmove = false
timerdm=0
accel=3
vspd = 0
fireshottimer = 0