function BallSpeed(){
	
	if room != TitleScreen{
		
		switch(global.difficulty){
		
		case 1 :
		
			oBalle.speed = 10;
			maxspeed = 26
		
		break;
		
		case 2 :
		
			oBalle.speed = 13
			maxspeed = 31
		
		break;
		
		case 3 :
			
			oBalle.speed = 17
			maxspeed = 32
		
		break;
			
		}

	}
	else if room == TitleScreen{
		oBalle.speed = 10
		maxspeed = 30}
}