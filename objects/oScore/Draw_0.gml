//Draw the Score

// 1 : 0

switch global.win{
	
	case "nobody":
	
		draw_set_font(ScoreFont);
		draw_set_halign(fa_center);
		if effectdo = true{
		draw_set_color(#85b4ff);}
		else draw_set_color(c_white);
		draw_text(room_width/2, room_height - 60, string(playerScore) + " : " + string(enemyScore));

	break;
	
	case "p1":
		draw_set_font(TitleFont);
		draw_set_halign(fa_center);
		instance_destroy(oBalle)
		instance_destroy(oTrail)
		instance_destroy(oTrailFire)
		if global.multi draw_text(room_width/2, room_height /2-60 , "PLAYER 1 WON");
		else draw_text(room_width/2, room_height /2-60 , "YOU WON");
		draw_set_font(ScoreFont);
		draw_text(room_width/2, room_height /2, "Press Space to continue...")
		draw_text(room_width/2, room_height - 60, string(playerScore) + " : " + string(enemyScore));
		
	break;
	
	case "p2":
		draw_set_font(TitleFont);
		draw_set_halign(fa_center);
		instance_destroy(oBalle)
		instance_destroy(oTrail)
		instance_destroy(oTrailFire)
		if global.multi draw_text(room_width/2, room_height /2-60 , "PLAYER 2 WON");
		else draw_text(room_width/2, room_height /2-60 , "YOU LOST");
		draw_set_font(ScoreFont);
		draw_text(room_width/2, room_height /2, "Press Space to continue...")
		draw_text(room_width/2, room_height - 60, string(playerScore) + " : " + string(enemyScore));
	break;
	
}