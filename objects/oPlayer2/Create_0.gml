//initial position

x = room_width - 100
y = room_height/2


//
	
switch(global.difficulty){
	
		case 1 :
			speedy = 9
		break;
	
		case 2 :
			speedy = 11
		break;
	
		case 3 :
			speedy=13
		break;	
	}

dontmove = false
timerdm=0
accel=3
vspd = 0
fireshottimer = 0