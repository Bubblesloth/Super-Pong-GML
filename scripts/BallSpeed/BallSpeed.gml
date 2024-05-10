function BallSpeed(){
	
	if room != rTitleScreen{
		
		switch(global.difficulty){
		
		case DIFFICULTY.EASY :
		
			oBalle.speed = 10;
			maxspeed = 26
		
		break;
		
		case DIFFICULTY.MEDIUM :
		
			oBalle.speed = 13
			maxspeed = 31
		
		break;
		
		case DIFFICULTY.HARD :
			
			oBalle.speed = 17
			maxspeed = 32
		
		break;
		
		case DIFFICULTY.MOUSEMODE:
		
			oBalle.speed = 17
			maxspeed = 35
			
		break;
			
		}

	}
	else if room == rTitleScreen{
		oBalle.speed = 10
		maxspeed = 30}
}