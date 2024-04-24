//Inital Position

if player_id==0{
	x = 100;
	y = room_height/2;
}
else{
	x = room_width - 100;
	y = room_height/2;
}

//variables

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

bugtimer = 0;
drawbugtext = false
dontmove = false
timerdm=0
up1 = 0
down1 = 0
accel=3
vspd = 0