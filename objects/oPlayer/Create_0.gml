//Inital Position

x = 100;
y = room_height/2;


//variables

switch(global.difficulty){
	
	case DIFFICULTY.EASY :
		speedy = 10
	break;
	
	case DIFFICULTY.MEDIUM :
		speedy = 14
	break;
	
	case DIFFICULTY.HARD :
		speedy=14
	break;	
	
	case DIFFICULTY.MOUSEMODE:
		speedy = 0
	break;
	
}

bugtimer = 0;
drawbugtext = false
dontmove = false
timerdm=0

accel=3
vspd = 0

fireshottimer = 0