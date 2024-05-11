function BallSpeed(){
	
	if room != rTitleScreen{
		
		switch(global.difficulty){
		
		case DIFFICULTY.EASY :
		
			speed = 10;
			maxspeed = 26
			accel = 1.080
		
		break;
		
		case DIFFICULTY.MEDIUM :
		
			speed = 13
			maxspeed = 31
			accel = 1.080
		
		break;
		
		case DIFFICULTY.HARD :
			
			speed = 17
			maxspeed = 32
			accel = 1.070
		
		break;
		
		case DIFFICULTY.MOUSEMODE:
		
			speed = 17
			maxspeed = 42
			accel = 1.050
			
		break;
			
		}

	}
	else if room == rTitleScreen{
		speed = 10
		maxspeed = 30
		accel = 1.080}
}